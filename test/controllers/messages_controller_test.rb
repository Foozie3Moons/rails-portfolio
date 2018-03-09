require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "GET contact#new" do
    get contact_url

    assert_response :success

    assert_select 'form' do
      assert_select 'input[type=text]'
      assert_select 'input[type=email]'
      assert_select 'textarea'
      assert_select 'input[type=submit]'
    end
  end

  test 'POST contact#create' do
    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post create_message_path, params: {
        message: {
          name: 'cornholio',
          email: 'cornholio@tp.org',
          body: 'my name is cornholio, I need tp for my bung hole!'
        }
      }
    end

    assert_redirected_to contact_path

    follow_redirect!

    assert_match /Message received, thanks!/, response.body
  end


  test 'invalid POST create' do
    post contact_path, params: {
      message: { name: '', email: '', body: '' }
    }

    assert_match /Name .* blank/, response.body
    assert_match /Email .* blank/, response.body
    assert_match /Body .* blank/, response.body
  end

end
