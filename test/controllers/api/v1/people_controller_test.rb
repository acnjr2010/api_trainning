require 'test_helper'

class Api::V1::PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_person = api_v1_people(:one)
  end

  test "should get index" do
    get api_v1_people_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_person_url
    assert_response :success
  end

  test "should create api_v1_person" do
    assert_difference('Api::V1::Person.count') do
      post api_v1_people_url, params: { api_v1_person: {  } }
    end

    assert_redirected_to api_v1_person_url(Api::V1::Person.last)
  end

  test "should show api_v1_person" do
    get api_v1_person_url(@api_v1_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_person_url(@api_v1_person)
    assert_response :success
  end

  test "should update api_v1_person" do
    patch api_v1_person_url(@api_v1_person), params: { api_v1_person: {  } }
    assert_redirected_to api_v1_person_url(@api_v1_person)
  end

  test "should destroy api_v1_person" do
    assert_difference('Api::V1::Person.count', -1) do
      delete api_v1_person_url(@api_v1_person)
    end

    assert_redirected_to api_v1_people_url
  end
end
