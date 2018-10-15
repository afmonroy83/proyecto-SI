require 'test_helper'

class CursosControllerTest < ActionDispatch::IntegrationTest
  test "should get matricular" do
    get cursos_matricular_url
    assert_response :success
  end

end
