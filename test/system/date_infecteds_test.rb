require "application_system_test_case"

class DateInfectedsTest < ApplicationSystemTestCase
  setup do
    @date_infected = date_infecteds(:one)
  end

  test "visiting the index" do
    visit date_infecteds_url
    assert_selector "h1", text: "Date Infecteds"
  end

  test "creating a Date infected" do
    visit date_infecteds_url
    click_on "New Date Infected"

    fill_in "Animal", with: @date_infected.animal_id
    fill_in "Date infected", with: @date_infected.date_infected
    fill_in "Disease", with: @date_infected.disease_id
    click_on "Create Date infected"

    assert_text "Date infected was successfully created"
    click_on "Back"
  end

  test "updating a Date infected" do
    visit date_infecteds_url
    click_on "Edit", match: :first

    fill_in "Animal", with: @date_infected.animal_id
    fill_in "Date infected", with: @date_infected.date_infected
    fill_in "Disease", with: @date_infected.disease_id
    click_on "Update Date infected"

    assert_text "Date infected was successfully updated"
    click_on "Back"
  end

  test "destroying a Date infected" do
    visit date_infecteds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date infected was successfully destroyed"
  end
end
