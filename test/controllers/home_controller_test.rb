require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
    # Vérifie que le titre "Hello World App" est bien présent dans la page
    assert_includes @response.body, "Hello World App"
    # Vérifie la présence d'une activité principale
    assert_includes @response.body, "Cardiologie"
  end
end
