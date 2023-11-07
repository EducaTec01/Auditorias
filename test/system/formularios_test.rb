require "application_system_test_case"

class FormulariosTest < ApplicationSystemTestCase
  setup do
    @formulario = formularios(:one)
  end

  test "visiting the index" do
    visit formularios_url
    assert_selector "h1", text: "Formularios"
  end

  test "should create formulario" do
    visit formularios_url
    click_on "New formulario"

    fill_in "Fecha", with: @formulario.fecha
    fill_in "Noauditoria", with: @formulario.noAuditoria
    fill_in "Proceso", with: @formulario.proceso
    click_on "Create Formulario"

    assert_text "Formulario was successfully created"
    click_on "Back"
  end

  test "should update Formulario" do
    visit formulario_url(@formulario)
    click_on "Edit this formulario", match: :first

    fill_in "Fecha", with: @formulario.fecha
    fill_in "Noauditoria", with: @formulario.noAuditoria
    fill_in "Proceso", with: @formulario.proceso
    click_on "Update Formulario"

    assert_text "Formulario was successfully updated"
    click_on "Back"
  end

  test "should destroy Formulario" do
    visit formulario_url(@formulario)
    click_on "Destroy this formulario", match: :first

    assert_text "Formulario was successfully destroyed"
  end
end
