module Api
  module Customers
    class OrdersController < Customers::ApplicationController
      def index
      end

      def create
        @order = Order.new(request_params)
        total_price = 0
        @order.total_price = total_price
        ActiveRecord::Base.transaction do
          @order.save!
          order_item_params[:order_items].each do |order_item_params|
            item = Item.find(order_item_params[:item_id])
            total_price += item.price.to_i * order_item_params[:quantity]
            order_item = @order.order_items.new(order_item_params)
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
          :customer_destination_id,
          :ship_amount,
          :message,
        ).merge(customer_id: current_customer.id)
      end

      def order_item_params
        params.permit(
          order_items: [:item_id, :quantity]
        )
      end
    end
  end
end
