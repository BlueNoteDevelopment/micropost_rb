require 'test_helper'



class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = " | Microposts Application"
  end

  test "should get signup" do
    get signup_path
    assert_response :success
    assert_select "title", "Sign Up#{@base_title}"
  end

end
