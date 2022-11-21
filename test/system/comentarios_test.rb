require "application_system_test_case"

class ComentariosTest < ApplicationSystemTestCase
  setup do
    @comentario = comentarios(:one)
  end

  test "visiting the index" do
    visit comentarios_url
    assert_selector "h1", text: "Comentarios"
  end

  test "should create comentario" do
    visit comentarios_url
    click_on "New comentario"

    check "Aprovado" if @comentario.aprovado
    fill_in "Conteudo", with: @comentario.conteudo
    fill_in "Filme", with: @comentario.filme_id
    click_on "Create Comentario"

    assert_text "Comentario was successfully created"
    click_on "Back"
  end

  test "should update Comentario" do
    visit comentario_url(@comentario)
    click_on "Edit this comentario", match: :first

    check "Aprovado" if @comentario.aprovado
    fill_in "Conteudo", with: @comentario.conteudo
    fill_in "Filme", with: @comentario.filme_id
    click_on "Update Comentario"

    assert_text "Comentario was successfully updated"
    click_on "Back"
  end

  test "should destroy Comentario" do
    visit comentario_url(@comentario)
    click_on "Destroy this comentario", match: :first

    assert_text "Comentario was successfully destroyed"
  end
end