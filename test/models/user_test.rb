require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without information" do
    user = User.new
    assert_not user.save
  end

  test "save user with information and destroy for id" do
    user = User.new(id: '1',
                    email: 'test4@test.by',
                    password: '123456',
                    password_confirmation: '123456',
                    admin: true, first_name: 'test4')
    assert user.save

    user_d = User.destroy(1)
    assert user_d.destroy
  end
end
