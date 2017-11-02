require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get main_about_url
    assert_response :success
  end

  test "should get contact" do
    get main_contact_url
    assert_response :success
  end

  test "should get portfolio" do
    get main_portfolio_url
    assert_response :success
  end

end
