require "test_helper"

class ElencosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elenco = elencos(:one)
  end

  test "should get index" do
    get elencos_url
    assert_response :success
  end

  test "should get new" do
    get new_elenco_url
    assert_response :success
  end

  test "should create elenco" do
    assert_difference("Elenco.count") do
      post elencos_url, params: { elenco: { atore_id: @elenco.atore_id, filme_id: @elenco.filme_id } }
    end

    assert_redirected_to elenco_url(Elenco.last)
  end

  test "should show elenco" do
    get elenco_url(@elenco)
    assert_response :success
  end

  test "should get edit" do
    get edit_elenco_url(@elenco)
    assert_response :success
  end

  test "should update elenco" do
    patch elenco_url(@elenco), params: { elenco: { atore_id: @elenco.atore_id, filme_id: @elenco.filme_id } }
    assert_redirected_to elenco_url(@elenco)
  end

  test "should destroy elenco" do
    assert_difference("Elenco.count", -1) do
      delete elenco_url(@elenco)
    end

    assert_redirected_to elencos_url
  end
end
