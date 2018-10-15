require 'test_helper'

class AgregarControllerTest < ActionDispatch::IntegrationTest
  test "should get monitorias" do
    get agregar_monitorias_url
    assert_response :success
  end

end
