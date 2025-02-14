require "test_helper"

class DepartmentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get department_new_url
    assert_response :success
  end

  test "should get edit" do
    get department_edit_url
    assert_response :success
  end

  test "should get delete" do
    get department_delete_url
    assert_response :success
  end
end
