require 'test_helper'

class OpinionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get opinions_index_url
    assert_response :success
  end

  test "should get edit" do
    get opinions_edit_url
    assert_response :success
  end

end
