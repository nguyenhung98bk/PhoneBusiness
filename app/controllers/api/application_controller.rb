module Api
  class ApplicationController < ActionController::Base
    include JWTSessions::RailsAuthorization
    include Pagy::Backend
    helper_method %i[pager_meta]
    skip_before_action :verify_authenticity_token
  
    def pager_meta(pagy)
      {
        page: pagy.page,
        page_count: pagy.pages,
        page_size: pagy.items,
        item_count: pagy.count
      }
    end

    private
    
    def check_authentication
      
    end
  end
end
