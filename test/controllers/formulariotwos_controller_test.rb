require "test_helper"

class FormulariotwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formulariotwo = formulariotwos(:one)
  end

  test "should get index" do
    get formulariotwos_url
    assert_response :success
  end

  test "should get new" do
    get new_formulariotwo_url
    assert_response :success
  end

  test "should create formulariotwo" do
    assert_difference("Formulariotwo.count") do
      post formulariotwos_url, params: { formulariotwo: { evidencia: @formulariotwo.evidencia } }
    end

    assert_redirected_to formulariotwo_url(Formulariotwo.last)
  end

  test "should show formulariotwo" do
    get formulariotwo_url(@formulariotwo)
    assert_response :success
  end

  test "should get edit" do
    get edit_formulariotwo_url(@formulariotwo)
    assert_response :success
  end

  test "should update formulariotwo" do
    patch formulariotwo_url(@formulariotwo), params: { formulariotwo: { evidencia: @formulariotwo.evidencia } }
    assert_redirected_to formulariotwo_url(@formulariotwo)
  end

  test "should destroy formulariotwo" do
    assert_difference("Formulariotwo.count", -1) do
      delete formulariotwo_url(@formulariotwo)
    end

    assert_redirected_to formulariotwos_url
  end
end
