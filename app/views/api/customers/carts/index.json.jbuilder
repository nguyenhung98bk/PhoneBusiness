json.partial! 'api/components/status'
json.data do
  json.array! @carts do |cart|
    item = cart.item

    json.id cart.id
    json.customer_id cart.customer_id
    json.item_id item.id
    json.item_name item.name
    json.quantity cart.quantity
    json.item_price item.price
    json.item_images do
      json.array! item.item_images do |item_image|
        json.id item_image.id
        json.image_url item_image.image_url
      end
    end
  end
end
