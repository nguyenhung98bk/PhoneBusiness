module Api
  class ItemsController < Api::ApplicationController
    before_action :find_item, only: [:show]
    def index
      @pagy, @items = pagy(Item.search(params))
    end

    def show
      
    end

    private

    def find_item
      @item = Item.find(params[:id])
      return error_404 if @item.nil?
    end
  end
end
