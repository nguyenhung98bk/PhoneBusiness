module Api
  class CategoriesController < Api::ApplicationController
    before_action :find_category, only: [:show]
    def index
      @pagy, @categories = pagy(Category.search(params))
    end

    def show
      
    end

    private

    def find_category
      @category = Category.find(params[:id])
      return error_404 if @category.nil?
    end
  end
end
