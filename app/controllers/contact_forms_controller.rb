class ContactFormsController < ApplicationController
  before_action :set_contact_form, only: [:show, :update, :destroy]

  # GET /contact_forms
  def index
    @contact_forms = ContactForm.all

    render json: @contact_forms
  end

  # GET /contact_forms/1
  def show
    render json: @contact_form
  end

  # POST /contact_forms
  def create
    @contact_form = ContactForm.new(contact_form_params)

    if @contact_form.save
      render json: @contact_form, status: :created, location: @contact_form
    else
      render json: @contact_form.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contact_forms/1
  def update
    if @contact_form.update(contact_form_params)
      render json: @contact_form
    else
      render json: @contact_form.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contact_forms/1
  def destroy
    @contact_form.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_form
      @contact_form = ContactForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_form_params
      params.require(:contact_form).permit(:findee_message, :item_id)
    end
end
