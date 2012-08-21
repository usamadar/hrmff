require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { address: @employee.address, airline: @employee.airline, country: @employee.country, dob: @employee.dob, email: @employee.email, enabled: @employee.enabled, external_id: @employee.external_id, first_name: @employee.first_name, gender: @employee.gender, home_phone: @employee.home_phone, last_name: @employee.last_name, mobile: @employee.mobile, nationality: @employee.nationality, office_phone: @employee.office_phone, passport_expiry_date: @employee.passport_expiry_date, passport_issue_country: @employee.passport_issue_country, passport_issue_date: @employee.passport_issue_date, passport_number: @employee.passport_number, relationship: @employee.relationship, role: @employee.role, title: @employee.title, zip: @employee.zip }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    put :update, id: @employee, employee: { address: @employee.address, airline: @employee.airline, country: @employee.country, dob: @employee.dob, email: @employee.email, enabled: @employee.enabled, external_id: @employee.external_id, first_name: @employee.first_name, gender: @employee.gender, home_phone: @employee.home_phone, last_name: @employee.last_name, mobile: @employee.mobile, nationality: @employee.nationality, office_phone: @employee.office_phone, passport_expiry_date: @employee.passport_expiry_date, passport_issue_country: @employee.passport_issue_country, passport_issue_date: @employee.passport_issue_date, passport_number: @employee.passport_number, relationship: @employee.relationship, role: @employee.role, title: @employee.title, zip: @employee.zip }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
