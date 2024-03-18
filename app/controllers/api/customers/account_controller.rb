module Api
  module Customers
    class AccountController < ActionController::Base
      skip_before_action :verify_authenticity_token

      def register
        @customer = Customer.new(request_params)
        ActiveRecord::Base.transaction do
          if @customer.save
            @token = PasswordSetting.new(customer_id: @customer.id)
            @token.save
          end
        end
        url = "#{request.base_url}/customer/password_setting/#{@token}"
        begin
          ::CustomerMailer.send_mail_verify_login_id(@customer.id, url).deliver_later
        rescue StandardError => e
          Rails.logger.info("send mail false customer_id: #{@customer.id}")
        end
        # @token = "abcgxgaufdklad"
      end

      def active_account
        @password_setting = PasswordSetting.find_by(token: params[:token])
        if @password_setting.nil? || @password_setting.password_setup_token_expired?
          return render json: { status: 'NG', message: 'not_found' }, status: :ok
        end

        @customer = @password_setting.customer.update(status: :active)
        @password_setting.delete
        render json: { status: 'ok', messages: 'ok' }, status: :ok
      end

      private

      def request_params
        params.permit(
          :name,
          :email,
          :phone,
          :password,
        )
      end
    end
  end
end
