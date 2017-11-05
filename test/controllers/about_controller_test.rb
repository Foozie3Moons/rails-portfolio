require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get bio" do
    get about_bio_url
    assert_response :success
  end

  test "should get skills" do
    get about_skills_url
    assert_response :success
  end

  test "should get fun" do
    get about_fun_url
    assert_response :success
  end

end
