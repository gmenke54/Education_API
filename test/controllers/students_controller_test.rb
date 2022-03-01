require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url, as: :json
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post students_url, params: { student: { address_1: @student.address_1, address_2: @student.address_2, city: @student.city, education: @student.education, f_name: @student.f_name, income: @student.income, initial: @student.initial, l_name: @student.l_name, prefix: @student.prefix, state: @student.state, zip: @student.zip } }, as: :json
    end

    assert_response :created
  end

  test "should show student" do
    get student_url(@student), as: :json
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { address_1: @student.address_1, address_2: @student.address_2, city: @student.city, education: @student.education, f_name: @student.f_name, income: @student.income, initial: @student.initial, l_name: @student.l_name, prefix: @student.prefix, state: @student.state, zip: @student.zip } }, as: :json
    assert_response :success
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete student_url(@student), as: :json
    end

    assert_response :no_content
  end
end
