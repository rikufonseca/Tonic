class MessagesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    if params[:locale] == "en" || params[:locale].nil?
      @categories = Message::CATEGORIES_EN
      @sub_categories = Message::SUB_CATEGORIES_EN
    else
      @categories = Message::CATEGORIES_GR
      @sub_categories = Message::SUB_CATEGORIES_GR
    end
    @message = Message.new
    @message.build_contact
  end

  def create
    @message = Message.new(message_params)
    contact = Contact.find_or_create_by!(email: params[:message][:contact_attributes][:email].downcase) do |user|
      user.first_name = params[:message][:contact_attributes][:first_name]
      user.last_name = params[:message][:contact_attributes][:last_name]
      user.phone_number = params[:message][:contact_attributes][:phone_number] if params[:message][:contact_attributes][:phone_number].to_i != nil
    end

    @message.contact = contact

    if @message.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, categories: [], sub_categories: [], contact_attributes: [:first_name, :last_name, :email, :phone_number])
  end
end
