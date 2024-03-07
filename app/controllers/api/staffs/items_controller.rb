module Api
  module Staffs
    class ItemsController < Staffs::ApplicationController
      before_action :find_item, only: [:update, :show]
      def index
        @pagy, @items = pagy(Item.search(params))
      end
      
      def create
        @item = Item.new(request_params)
        @item.save!
      end

      def update
        @item.assign_attributes(request_params)
        @item.save!
      end

      def show
        
      end

      private

      def request_params
        params.permit(
          :name,
          :supplier_id,
          :category_id,
          :quantity,
          :purchase_price,
          :original_price,
          :price,
        ).merge(item_images_attributes: image_params)
      end

      def image_params
        return [] if params[:item_images].blank?

        item_images = []

        params[:item_images].each do |image|
          image_path = if image[:image_url].to_s.include?('data:image')
                         upload_image(image[:image_url], image[:name])
                       else
                         image[:image_url]
                       end
  
        item_images.push({
                id: image[:id],
                image_url: image_path,
              })
        end
  
        item_images
      end

      def upload_image(content, name)
        p "=================="
        require 'base64'
        data = Base64.decode64(content.to_s['data:image/png;base64,'.length..])
        p "xxxxxxxxxxxxxxxxx"

        if data.size > 3.megabytes
          error_422('写真が大きすぎます。')
        else
          p name
          File.open(Rails.root.join('public', 'uploads', name), 'wb') do |file|
            file.write(data)
          end
          @image = "/uploads/#{name}"
        end
      end

      def find_item
        @item = Item.find(params[:id])
        return error_404 if @item.nil?
      end
    end
  end
end
