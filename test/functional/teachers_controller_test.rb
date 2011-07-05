require 'test_helper'
#was the web request successful?
#was the user redirected to the right page?
#was the user successfully authenticated?
#was the correct object stored in the response template?
#was the appropriate message displayed to the user in the view?
#get
#post
#put
#head
#delete

class TeachersControllerTest < ActionController::TestCase


  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher)
  end


end
