require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

   setup do 
      sign_in users(:user_one)
   end

   test "Directed if user is not signed in" do 
      sign_out :user
      get users_url
      assert_response :redirect 
   end

   
end
