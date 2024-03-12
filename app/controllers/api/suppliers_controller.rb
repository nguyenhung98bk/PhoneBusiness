module Api
  class SuppliersController < Api::ApplicationController
    before_action :find_supplier, only: [:show]

    def index
      @pagy, @suppliers = pagy(Supplier.search(params))
    end

    def show
      
    end

    private

    def find_supplier
      @supplier = Supplier.find(params[:id])
      return error_404 if @supplier.nil?
    end
  end
end
