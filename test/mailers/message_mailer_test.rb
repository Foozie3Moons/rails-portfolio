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

    assert_equal "New message from Emily | emily@example.com", email.subject
    assert_equal ["matthew.bell.290@gmail.com"], email.to
    assert_equal ["notifications@mjbell.io"], email.from
    assert_match /I am looking at Nelle the sea otter and she died ;_;/, email.body.encoded
  end

  test "copy" do
    message = Message.new name: 'Emily',
      email: 'emily@example.com',
      body: 'I am looking at Nelle the sea otter and she died ;_;'
    email = MessageMailer.copy(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal "mjbell.io | Thank you for your email!", email.subject
    assert_equal ["emily@example.com"], email.to
    assert_equal ["notifications@mjbell.io"], email.from
    assert_equal ["matthew.bell.290@gmail.com"], email.cc
  end

end
