module Api
  class ItemsController < Api::ApplicationController
    before_action :find_item, only: [:show]
    def index
      @pagy, @items = pagy(Item.search(params), items: params[:page_size] || 10)
    end

    def show
      
    end

    def get_item_by_category_ids
      @items = []
      params[:category_ids].each do |category_id|
        item = Item.where(category_id: category_id).limit(10)
        @items.concat(item)
      end
    end

    private

    def find_item
      @item = Item.find(params[:id])
      return error_404 if @item.nil?
    end
  end
end
