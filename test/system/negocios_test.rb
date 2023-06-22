require "application_system_test_case"

class NegociosTest < ApplicationSystemTestCase
  setup do
    @negocio = negocios(:one)
  end

  test "visiting the index" do
    visit negocios_url
    assert_selector "h1", text: "Negocios"
  end

  test "should create negocio" do
    visit negocios_url
    click_on "New negocio"

    fill_in "Descripcion", with: @negocio.descripcion
    fill_in "Titulo", with: @negocio.titulo
    click_on "Create Negocio"

    assert_text "Negocio was successfully created"
    click_on "Back"
  end

  test "should update Negocio" do
    visit negocio_url(@negocio)
    click_on "Edit this negocio", match: :first

    fill_in "Descripcion", with: @negocio.descripcion
    fill_in "Titulo", with: @negocio.titulo
    click_on "Update Negocio"

    assert_text "Negocio was successfully updated"
    click_on "Back"
  end

  test "should destroy Negocio" do
    visit negocio_url(@negocio)
    click_on "Destroy this negocio", match: :first

    assert_text "Negocio was successfully destroyed"
  end
end
