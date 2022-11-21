require "application_system_test_case"

class ElencosTest < ApplicationSystemTestCase
  setup do
    @elenco = elencos(:one)
  end

  test "visiting the index" do
    visit elencos_url
    assert_selector "h1", text: "Elencos"
  end

  test "should create elenco" do
    visit elencos_url
    click_on "New elenco"

    fill_in "Atore", with: @elenco.atore_id
    fill_in "Filme", with: @elenco.filme_id
    click_on "Create Elenco"

    assert_text "Elenco was successfully created"
    click_on "Back"
  end

  test "should update Elenco" do
    visit elenco_url(@elenco)
    click_on "Edit this elenco", match: :first

    fill_in "Atore", with: @elenco.atore_id
    fill_in "Filme", with: @elenco.filme_id
    click_on "Update Elenco"

    assert_text "Elenco was successfully updated"
    click_on "Back"
  end

  test "should destroy Elenco" do
    visit elenco_url(@elenco)
    click_on "Destroy this elenco", match: :first

    assert_text "Elenco was successfully destroyed"
  end
end
