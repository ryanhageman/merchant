require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
    @line_item = line_items(:one)
    @product = products(:one)
    @product_new = {
      name: 'unique_name',
      brand_id: 1,
      category_id: 1,
      description: 'Great description',
      current_price: '1.00',
      quantity: 1
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @product_new
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: @product_new
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
