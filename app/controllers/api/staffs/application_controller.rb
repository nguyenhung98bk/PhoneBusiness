module Api
  module Staffs
    class ApplicationController < Api::ApplicationController
      
      private

      def current_staff
        @current_staff ||= Staff.find(payload['staff_id'])
      end
    end
  end
end
