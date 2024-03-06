module Api
  module Staffs
    class ApplicationController < ActionController::Base
      protect_from_forgery with: :null_session
      include JWTSessions::RailsAuthorization
      helper ApplicationHelper
      include Pagy::Backend
      include ErrorResponseGenerateable
      rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized
      helper_method %i[pager_meta]

      def pager_meta(pagy)
        {
          page: pagy.page,
          page_count: pagy.pages,
          page_size: pagy.items,
          item_count: pagy.count
        }
      end

      private

      def current_staff
        @current_staff ||= Staff.find(payload['staff_id'])
      end

      def not_authorized
        render json: { error: 'Not authorized' }, status: :unauthorized
      end
    end
  end
end
