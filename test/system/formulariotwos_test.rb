require "application_system_test_case"

class FormulariotwosTest < ApplicationSystemTestCase
  setup do
    @formulariotwo = formulariotwos(:one)
  end

  test "visiting the index" do
    visit formulariotwos_url
    assert_selector "h1", text: "Formulariotwos"
  end

  test "should create formulariotwo" do
    visit formulariotwos_url
    click_on "New formulariotwo"

    fill_in "Evidencia", with: @formulariotwo.evidencia
    click_on "Create Formulariotwo"

    assert_text "Formulariotwo was successfully created"
    click_on "Back"
  end

  test "should update Formulariotwo" do
    visit formulariotwo_url(@formulariotwo)
    click_on "Edit this formulariotwo", match: :first

    fill_in "Evidencia", with: @formulariotwo.evidencia
    click_on "Update Formulariotwo"

    assert_text "Formulariotwo was successfully updated"
    click_on "Back"
  end

  test "should destroy Formulariotwo" do
    visit formulariotwo_url(@formulariotwo)
    click_on "Destroy this formulariotwo", match: :first

    assert_text "Formulariotwo was successfully destroyed"
  end
end
