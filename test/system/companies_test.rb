require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "creating a Company" do
    visit companies_url
    click_on "New Company"

    fill_in "Address", with: @company.address
    fill_in "Building", with: @company.building
    fill_in "Client rate", with: @company.client_rate
    fill_in "Client type", with: @company.client_type
    fill_in "Name", with: @company.name
    fill_in "Note", with: @company.note
    fill_in "Sector", with: @company.sector
    fill_in "Supplier rate", with: @company.supplier_rate
    fill_in "Supplier type", with: @company.supplier_type
    fill_in "Tax number 1", with: @company.tax_number_1
    fill_in "Tax number 2", with: @company.tax_number_2
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "updating a Company" do
    visit companies_url
    click_on "Edit", match: :first

    fill_in "Address", with: @company.address
    fill_in "Building", with: @company.building
    fill_in "Client rate", with: @company.client_rate
    fill_in "Client type", with: @company.client_type
    fill_in "Name", with: @company.name
    fill_in "Note", with: @company.note
    fill_in "Sector", with: @company.sector
    fill_in "Supplier rate", with: @company.supplier_rate
    fill_in "Supplier type", with: @company.supplier_type
    fill_in "Tax number 1", with: @company.tax_number_1
    fill_in "Tax number 2", with: @company.tax_number_2
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "destroying a Company" do
    visit companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company was successfully destroyed"
  end
end
