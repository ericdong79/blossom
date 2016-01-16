class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :orderer_name
      t.string :orderer_phone
      t.datetime :planned_delivery_datetime
      t.string :receiver_name
      t.string :receiver_phone
      t.text :receiver_address
      t.string :order_status
      t.string :product_name
      t.text :remark
      t.string :handler
      t.float :money_received

      t.timestamps null: false
    end
  end
end
