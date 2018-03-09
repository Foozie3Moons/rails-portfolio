require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact" do
    message = Message.new name: 'Emily',
      email: 'emily@example.com',
      body: 'I am looking at Nelle the sea otter and she died ;_;'

    email = MessageMailer.contact(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal "Message from https://mjbell.io", email.subject
    assert_equal ["matt@example.com"], email.to
    assert_equal ["emily@example.com"], email.from
    assert_match /I am looking at Nelle the sea otter and she died ;_;/, email.body.encoded
  end

end
