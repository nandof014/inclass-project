require 'test_helper'

class DateInfectedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_infected = date_infecteds(:one)
  end

  test "should get index" do
    get date_infecteds_url
    assert_response :success
  end

  test "should get new" do
    get new_date_infected_url
    assert_response :success
  end

  test "should create date_infected" do
    assert_difference('DateInfected.count') do
      post date_infecteds_url, params: { date_infected: { animal_id: @date_infected.animal_id, date_infected: @date_infected.date_infected, disease_id: @date_infected.disease_id } }
    end

    assert_redirected_to date_infected_url(DateInfected.last)
  end

  test "should show date_infected" do
    get date_infected_url(@date_infected)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_infected_url(@date_infected)
    assert_response :success
  end

  test "should update date_infected" do
    patch date_infected_url(@date_infected), params: { date_infected: { animal_id: @date_infected.animal_id, date_infected: @date_infected.date_infected, disease_id: @date_infected.disease_id } }
    assert_redirected_to date_infected_url(@date_infected)
  end

  test "should destroy date_infected" do
    assert_difference('DateInfected.count', -1) do
      delete date_infected_url(@date_infected)
    end

    assert_redirected_to date_infecteds_url
  end
end
