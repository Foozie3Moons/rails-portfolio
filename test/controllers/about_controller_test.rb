require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get bio" do
    skip
    get about_bio_url
    assert_response :success
  end

  test "should get skills" do
    skip
    get about_skills_url
    assert_response :success
  end

  test "should get fun" do
    skip
    get about_fun_url
    assert_response :success
  end

end
