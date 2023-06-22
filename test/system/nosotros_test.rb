require "application_system_test_case"

class NosotrosTest < ApplicationSystemTestCase
  setup do
    @nosotro = nosotros(:one)
  end

  test "visiting the index" do
    visit nosotros_url
    assert_selector "h1", text: "Nosotros"
  end

  test "should create nosotro" do
    visit nosotros_url
    click_on "New nosotro"

    fill_in "Descripcion", with: @nosotro.descripcion
    fill_in "Titulo", with: @nosotro.titulo
    click_on "Create Nosotro"

    assert_text "Nosotro was successfully created"
    click_on "Back"
  end

  test "should update Nosotro" do
    visit nosotro_url(@nosotro)
    click_on "Edit this nosotro", match: :first

    fill_in "Descripcion", with: @nosotro.descripcion
    fill_in "Titulo", with: @nosotro.titulo
    click_on "Update Nosotro"

    assert_text "Nosotro was successfully updated"
    click_on "Back"
  end

  test "should destroy Nosotro" do
    visit nosotro_url(@nosotro)
    click_on "Destroy this nosotro", match: :first

    assert_text "Nosotro was successfully destroyed"
  end
end
