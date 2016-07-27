require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "greet" do
    user = User.new(name: "bob")
    assert_equal "Hello, I'm bob!", user.greet
  end
end
