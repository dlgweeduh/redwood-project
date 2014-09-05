require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
    @base_title = "Redwood Project"
  end 

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about us" do
    get :about
    assert_response :success
    assert_select "title", "#{@base_title} | About Us"
  end

  test "should get school" do
    get :school
    assert_response :success
    assert_select "title", "#{@base_title} | School"
  end

  test "should get business" do
    get :business
    assert_response :success
    assert_select "title", "#{@base_title} | Business"
  end 

  test "should get individual" do
    get :individual
    assert_response :success
    assert_select "title", "#{@base_title} | Individual"
  end   

  test "should get blog" do
    get :blog
    assert_response :success
    assert_select "title", "#{@base_title} | Blog"
  end  

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "#{@base_title} | Contact"
  end   

end
