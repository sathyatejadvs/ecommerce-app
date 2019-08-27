require "application_system_test_case"

class AdminUsersTest < ApplicationSystemTestCase

   test "should be new user" do
	   visit new_admin_user_session_url

	   fill_in('admin_user_email', :with =>  "daggubatisatyateja@gmail.com")
	   fill_in('admin_user_password', :with => "ssssss")

	   click_button 'Login'

	   assert "Admin Loggedin"
   end
   
end
