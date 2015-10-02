require 'test_helper'

class UserTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'has secure password' do
	visit signin_path
	fill_in "email", with: user.email
	fill_in "password", with: default_password
	click_on "Sign in"
  end
end
