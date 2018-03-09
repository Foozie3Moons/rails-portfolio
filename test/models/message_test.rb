require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  test 'should be valid when all attributes are set' do
    attrs = {
      name: 'matt',
      email: 'matt@example.com',
      body: 'whatup its ya boi'
    }

    msg = Message.new attrs

    assert msg.valid?, 'should be valid'
  end

  test 'name, email, and body are required by law (lol)' do
    msg = Message.new

    refute msg.valid?, 'Blank Message should be invalid'

    assert_match /blank/, msg.errors[:name].to_s
    assert_match /blank/, msg.errors[:email].to_s
    assert_match /blank/, msg.errors[:body].to_s
  end

  test 'email must be of a valid format' do
    attrs = {
      name: 'matt',
      email: 'matt@example',
      body: 'whatup its ya boi'
    }
    msg = Message.new attrs

    refute msg.valid?, 'Email must be valid'
  end
end
