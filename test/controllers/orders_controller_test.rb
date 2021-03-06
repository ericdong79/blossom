require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { customer_name: @order.customer_name, handler: @order.handler, money_received: @order.money_received, order_status: @order.order_status, orderer_name: @order.orderer_name, orderer_phone: @order.orderer_phone, planned_delivery_datetime: @order.planned_delivery_datetime, product_name: @order.product_name, receiver_address: @order.receiver_address, receiver_name: @order.receiver_name, receiver_phone: @order.receiver_phone, remark: @order.remark }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { customer_name: @order.customer_name, handler: @order.handler, money_received: @order.money_received, order_status: @order.order_status, orderer_name: @order.orderer_name, orderer_phone: @order.orderer_phone, planned_delivery_datetime: @order.planned_delivery_datetime, product_name: @order.product_name, receiver_address: @order.receiver_address, receiver_name: @order.receiver_name, receiver_phone: @order.receiver_phone, remark: @order.remark }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
