require 'test_helper'

class AppoointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appoointments_index_url
    assert_response :success
  end

  test "should get edit" do
    get appoointments_edit_url
    assert_response :success
  end

  test "should get new" do
    get appoointments_new_url
    assert_response :success
  end

  test "should get show" do
    get appoointments_show_url
    assert_response :success
  end

end
