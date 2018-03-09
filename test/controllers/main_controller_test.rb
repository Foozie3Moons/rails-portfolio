require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest

  test "should get about" do
    get about_bio_path
    assert_response :success
  end

  test "should get resume" do
    get resume_path
    assert_response :success
  end

  test "should get portfolio" do
    get portfolio_url
    assert_response :success
  end

end
