require "test_helper"

class AtoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atore = atores(:one)
  end

  test "should get index" do
    get atores_url
    assert_response :success
  end

  test "should get new" do
    get new_atore_url
    assert_response :success
  end

  test "should create atore" do
    assert_difference("Atore.count") do
      post atores_url, params: { atore: { ano_nascimento: @atore.ano_nascimento, emaisl: @atore.emaisl, nome: @atore.nome } }
    end

    assert_redirected_to atore_url(Atore.last)
  end

  test "should show atore" do
    get atore_url(@atore)
    assert_response :success
  end

  test "should get edit" do
    get edit_atore_url(@atore)
    assert_response :success
  end

  test "should update atore" do
    patch atore_url(@atore), params: { atore: { ano_nascimento: @atore.ano_nascimento, emaisl: @atore.emaisl, nome: @atore.nome } }
    assert_redirected_to atore_url(@atore)
  end

  test "should destroy atore" do
    assert_difference("Atore.count", -1) do
      delete atore_url(@atore)
    end

    assert_redirected_to atores_url
  end
end
