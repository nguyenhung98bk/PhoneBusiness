json.partial! 'api/components/status'
json.data do
  json.array! @supplier_orders do |supplier_order|
    json.id supplier_order.id
    json.name supplier_order.name
    json.sum_item supplier_order.sum_item
    json.sum_price supplier_order.sum_price
  end
end
