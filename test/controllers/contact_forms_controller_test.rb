require 'test_helper'

class ContactFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_form = contact_forms(:one)
  end

  test "should get index" do
    get contact_forms_url, as: :json
    assert_response :success
  end

  test "should create contact_form" do
    assert_difference('ContactForm.count') do
      post contact_forms_url, params: { contact_form: { findee_message: @contact_form.findee_message, item_id: @contact_form.item_id } }, as: :json
    end

    assert_response 201
  end

  test "should show contact_form" do
    get contact_form_url(@contact_form), as: :json
    assert_response :success
  end

  test "should update contact_form" do
    patch contact_form_url(@contact_form), params: { contact_form: { findee_message: @contact_form.findee_message, item_id: @contact_form.item_id } }, as: :json
    assert_response 200
  end

  test "should destroy contact_form" do
    assert_difference('ContactForm.count', -1) do
      delete contact_form_url(@contact_form), as: :json
    end

    assert_response 204
  end
end
