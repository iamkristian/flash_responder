require 'test_helper'

class FlashTest < ActionController::TestCase
  tests UsersController

  test "sends notice message on creation" do
    post :create, user: { name: "John Doe" }
    assert_equal "User was successfully created.", flash[:notice]
  end

  test "sends notice message on update" do
    user = User.create!(name: "John Doe")
    put :update, id: user.id, user: { name: "John Nash" }
    assert_equal "User was successfully updated.", flash[:notice]
  end

  test "sends notice message on destroy" do
    user = User.create!(name: "John Doe")
    delete :destroy, id: user.id
    assert_equal "User was successfully destroyed.", flash[:notice]
  end
end
