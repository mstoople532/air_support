require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight = flights(:one)
  end

  test "should get index" do
    get flights_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_url
    assert_response :success
  end

  test "should create flight" do
    assert_difference('Flight.count') do
      post flights_url, params: { flight: { aircraft_type: @flight.aircraft_type, arrival: @flight.arrival, arrived: @flight.arrived, cleaned: @flight.cleaned, departure: @flight.departure, flight_name: @flight.flight_name, number_of_passengers: @flight.number_of_passengers, route_id: @flight.route_id, stocked: @flight.stocked } }
    end

    assert_redirected_to flight_url(Flight.last)
  end

  test "should show flight" do
    get flight_url(@flight)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_url(@flight)
    assert_response :success
  end

  test "should update flight" do
    patch flight_url(@flight), params: { flight: { aircraft_type: @flight.aircraft_type, arrival: @flight.arrival, arrived: @flight.arrived, cleaned: @flight.cleaned, departure: @flight.departure, flight_name: @flight.flight_name, number_of_passengers: @flight.number_of_passengers, route_id: @flight.route_id, stocked: @flight.stocked } }
    assert_redirected_to flight_url(@flight)
  end

  test "should destroy flight" do
    assert_difference('Flight.count', -1) do
      delete flight_url(@flight)
    end

    assert_redirected_to flights_url
  end
end
