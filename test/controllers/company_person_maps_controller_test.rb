require 'test_helper'

class CompanyPersonMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_person_map = company_person_maps(:one)
  end

  test "should get index" do
    get company_person_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_company_person_map_url
    assert_response :success
  end

  test "should create company_person_map" do
    assert_difference('CompanyPersonMap.count') do
      post company_person_maps_url, params: { company_person_map: { company_id: @company_person_map.company_id, person_id: @company_person_map.person_id, summary: @company_person_map.summary } }
    end

    assert_redirected_to company_person_map_url(CompanyPersonMap.last)
  end

  test "should show company_person_map" do
    get company_person_map_url(@company_person_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_person_map_url(@company_person_map)
    assert_response :success
  end

  test "should update company_person_map" do
    patch company_person_map_url(@company_person_map), params: { company_person_map: { company_id: @company_person_map.company_id, person_id: @company_person_map.person_id, summary: @company_person_map.summary } }
    assert_redirected_to company_person_map_url(@company_person_map)
  end

  test "should destroy company_person_map" do
    assert_difference('CompanyPersonMap.count', -1) do
      delete company_person_map_url(@company_person_map)
    end

    assert_redirected_to company_person_maps_url
  end
end
