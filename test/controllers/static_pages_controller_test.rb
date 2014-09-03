require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App | Home"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App | About Us"    
  end

  test "should get school" do
    get :school
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App | School"    
  end

  test "should get business" do
    get :business
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App | Business"    
  end

  test "should get individual" do
    get :individual
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App | Individual"    
  end


end
