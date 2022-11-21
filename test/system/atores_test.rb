require "application_system_test_case"

class AtoresTest < ApplicationSystemTestCase
  setup do
    @atore = atores(:one)
  end

  test "visiting the index" do
    visit atores_url
    assert_selector "h1", text: "Atores"
  end

  test "should create atore" do
    visit atores_url
    click_on "New atore"

    fill_in "Ano nascimento", with: @atore.ano_nascimento
    fill_in "Emaisl", with: @atore.emaisl
    fill_in "Nome", with: @atore.nome
    click_on "Create Atore"

    assert_text "Atore was successfully created"
    click_on "Back"
  end

  test "should update Atore" do
    visit atore_url(@atore)
    click_on "Edit this atore", match: :first

    fill_in "Ano nascimento", with: @atore.ano_nascimento
    fill_in "Emaisl", with: @atore.emaisl
    fill_in "Nome", with: @atore.nome
    click_on "Update Atore"

    assert_text "Atore was successfully updated"
    click_on "Back"
  end

  test "should destroy Atore" do
    visit atore_url(@atore)
    click_on "Destroy this atore", match: :first

    assert_text "Atore was successfully destroyed"
  end
end
