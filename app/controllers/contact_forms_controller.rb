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
    item = Item.find(params[:item_id])
    user = item.user
    # byebug
    @contact_form = ContactForm.new(contact_form_params)
     
      if @contact_form.save
        # message = "Hallelujah! Someone found your `#{item.item_name}`! Here is the message from the cool human who found it: `#{@contact_form.findee_message}`"
        message = "🚨Alert 🚨\n Someone found your #{item.item_name}!\n Here is the message from the finder:\n #{@contact_form.findee_message}"
        TwilioTextMessenger.new(message, item).call
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

    def contact_form_params
      params.permit(["findee_message"], ["item_id"])
    end
end
