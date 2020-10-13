require "application_system_test_case"

class CompanyPersonMapsTest < ApplicationSystemTestCase
  setup do
    @company_person_map = company_person_maps(:one)
  end

  test "visiting the index" do
    visit company_person_maps_url
    assert_selector "h1", text: "Company Person Maps"
  end

  test "creating a Company person map" do
    visit company_person_maps_url
    click_on "New Company Person Map"

    fill_in "Company", with: @company_person_map.company_id
    fill_in "Person", with: @company_person_map.person_id
    fill_in "Summary", with: @company_person_map.summary
    click_on "Create Company person map"

    assert_text "Company person map was successfully created"
    click_on "Back"
  end

  test "updating a Company person map" do
    visit company_person_maps_url
    click_on "Edit", match: :first

    fill_in "Company", with: @company_person_map.company_id
    fill_in "Person", with: @company_person_map.person_id
    fill_in "Summary", with: @company_person_map.summary
    click_on "Update Company person map"

    assert_text "Company person map was successfully updated"
    click_on "Back"
  end

  test "destroying a Company person map" do
    visit company_person_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company person map was successfully destroyed"
  end
end
