require "application_system_test_case"

class AsignacionsTest < ApplicationSystemTestCase
  setup do
    @asignacion = asignacions(:one)
  end

  test "visiting the index" do
    visit asignacions_url
    assert_selector "h1", text: "Asignacions"
  end

  test "should create asignacion" do
    visit asignacions_url
    click_on "New asignacion"

    fill_in "Date", with: @asignacion.date
    fill_in "Departamento", with: @asignacion.departamento_id
    fill_in "Descripcion", with: @asignacion.descripcion
    fill_in "User", with: @asignacion.user_id
    click_on "Create Asignacion"

    assert_text "Asignacion was successfully created"
    click_on "Back"
  end

  test "should update Asignacion" do
    visit asignacion_url(@asignacion)
    click_on "Edit this asignacion", match: :first

    fill_in "Date", with: @asignacion.date
    fill_in "Departamento", with: @asignacion.departamento_id
    fill_in "Descripcion", with: @asignacion.descripcion
    fill_in "User", with: @asignacion.user_id
    click_on "Update Asignacion"

    assert_text "Asignacion was successfully updated"
    click_on "Back"
  end

  test "should destroy Asignacion" do
    visit asignacion_url(@asignacion)
    click_on "Destroy this asignacion", match: :first

    assert_text "Asignacion was successfully destroyed"
  end
end
