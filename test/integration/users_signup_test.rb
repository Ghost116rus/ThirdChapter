require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      user_params = {
        name:  "",
        email: "user@invalid",
        password:              "foo",
        password_confirmation: "bar" 
      }
      post users_path, params: { user: user_params }
    end
    assert_template 'users/new'
    #assert_select 'div#<CSS id for error explanation>'
    #assert_select 'div.<CSS class for field with error>'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      user_params = {
        name: "Example User",
        email: "user@example.com",
        password: "password",
        password_confirmation: "password"
      }
      post users_path, params: { user: user_params } 
      follow_redirect!
    end
    assert_template 'users/show'
  end
end
