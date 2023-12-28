require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path

        assert_response :success
        assert_select '.product', 2
    end

    test 'render a detailed product page' do
        get product_path(products(:wii))

        assert_response :success
        assert_select '.title', 'Nintendo wii'
        assert_select '.description', 'No esta nada mal'
        assert_select '.price', '146$'
    end
end