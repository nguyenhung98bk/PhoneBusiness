module Api
  module Admins
    class ApplicationController < Api::ApplicationController

      private

      def current_admin
        @current_admin ||= Admin.find(payload['admin_id'])
      end
    end
  end
end
