module Api
  module Staffs
    class SessionsController < Staffs::ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :authorize_access_request!, only: [:destroy]

      def create
        @user_data = {
          email: params[:email] || '',
          password: ''
        }
        if params[:email].present? && params[:email].present?
          @staff = Staff.find_by(email: params[:email])
          if !@staff.nil? && @staff.authenticate(params[:password])
            session[:staff_id] = nil
            session[:staff_id] = @staff.id
            payload = { user_id: @staff.id }
            session = JWTSessions::Session.new(payload: payload, refresh_by_access_allowed: true)
            tokens = session.login
            response.set_cookie(JWTSessions.access_cookie,
                                value: tokens[:access],
                                httponly: true,
                                secure: Rails.env.production?)
            render json: { csrf: tokens[:access] }
          else
            not_authorized
          end
        else
          not_authorized
        end
      end

      def check_token
        p authorize_access_request!
      end

      def destroy
        session = JWTSessions::Session.new(payload: payload)
        session.flush_by_access_payload
        render json: :ok
      end
    end
  end
end
