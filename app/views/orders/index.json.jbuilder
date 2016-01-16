json.array!(@orders) do |order|
  json.extract! order, :id, :customer_name, :orderer_name, :orderer_phone, :planned_delivery_datetime, :receiver_name, :receiver_phone, :receiver_address, :order_status, :product_name, :remark, :handler, :money_received
  json.url order_url(order, format: :json)
end
