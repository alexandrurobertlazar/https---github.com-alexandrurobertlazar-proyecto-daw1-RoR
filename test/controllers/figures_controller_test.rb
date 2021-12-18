require "test_helper"

class FiguresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @figure = figures(:one)
  end

  test "should get index" do
    get figures_url
    assert_response :success
  end

  test "should get new" do
    get new_figure_url
    assert_response :success
  end

  test "should create figure" do
    assert_difference('Figure.count') do
      post figures_url, params: { figure: { attributes: @figure.attributes, bestseller: @figure.bestseller, category: @figure.category, company: @figure.company, delivery: @figure.delivery, delivery_time: @figure.delivery_time, description: @figure.description, name: @figure.name, oldPrice: @figure.oldPrice, picture: @figure.picture, price: @figure.price, quality: @figure.quality, stock: @figure.stock, subcategory: @figure.subcategory } }
    end

    assert_redirected_to figure_url(Figure.last)
  end

  test "should show figure" do
    get figure_url(@figure)
    assert_response :success
  end

  test "should get edit" do
    get edit_figure_url(@figure)
    assert_response :success
  end

  test "should update figure" do
    patch figure_url(@figure), params: { figure: { attributes: @figure.attributes, bestseller: @figure.bestseller, category: @figure.category, company: @figure.company, delivery: @figure.delivery, delivery_time: @figure.delivery_time, description: @figure.description, name: @figure.name, oldPrice: @figure.oldPrice, picture: @figure.picture, price: @figure.price, quality: @figure.quality, stock: @figure.stock, subcategory: @figure.subcategory } }
    assert_redirected_to figure_url(@figure)
  end

  test "should destroy figure" do
    assert_difference('Figure.count', -1) do
      delete figure_url(@figure)
    end

    assert_redirected_to figures_url
  end
end
