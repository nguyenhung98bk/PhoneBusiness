module Api
  module Customers
    class OrdersController < Customers::ApplicationController
      def index
      end

      def show
        @order = Order.find(params[:id])
      end

      def create
        @order = Order.new(request_params)
        total_price = 0
        @order.total_price = total_price
        ActiveRecord::Base.transaction do
          @order.save!
          order_item_params[:order_items].each do |order_item_params|
            Cart.find(order_item_params[:cart_id]).destroy
            item = Item.find(order_item_params[:item_id])
            item.quantity -= order_item_params[:quantity]
            return error_422('Không đủ hàng') if item.quantity < 0
            item.save
            total_price += item.price.to_i * order_item_params[:quantity]
            order_item = @order.order_items.new()
            order_item.item_id = order_item_params[:item_id]
            order_item.quantity = order_item_params[:quantity]
            order_item.price = item.price
            order_item.purchase_price = item.purchase_price
            order_item.save
          end
          @order.update(total_price: total_price)
        end
      end

      private

      def request_params
        params.permit(
          :payment_type_id,
          :transport_service_id,
          :transport_service_name,
          :customer_destination_id,
          :ship_amount,
          :message,
        ).merge(customer_id: current_customer.id)
      end

      def order_item_params
        params.permit(
          order_items: [:cart_id, :item_id, :quantity]
        )
      end
    end
  end
end
