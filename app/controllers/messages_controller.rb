class MessagesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    set_contact_meta_tags
    change_for_languages
    @message = Message.new
    @message.build_contact
  end

  def create
    @message = Message.new(message_params)
    change_for_languages
    contact = Contact.find_or_create_by!(email: params[:message][:contact_attributes][:email].downcase) do |user|
      user.first_name = params[:message][:contact_attributes][:first_name]
      user.last_name = params[:message][:contact_attributes][:last_name]
      user.phone_number = params[:message][:contact_attributes][:phone_number] if params[:message][:contact_attributes][:phone_number].to_i != nil
    end

    @message.contact = contact

    if verify_recaptcha(model: @message) && @message.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, categories: [], sub_categories: [], contact_attributes: [:first_name, :last_name, :email, :phone_number])
  end

  def set_contact_meta_tags
    en_desc = "Tonic - Contact Us with our form or call us here is our phone number"
    gr_desc = "xsdfghjgklyjreraz"

    en_title = "Contact Us"
    gr_title = ""

    set_meta_tags(
      title: request.original_url.include?("gr") ? en_title : gr_title,
      description: request.original_url.include?("gr") ? gr_desc : en_desc,
      reverse: true,
      og: og_new_params,
      canonical: "https://tonic-society.com"
    )
  end

  def og_new_params
    en_desc = "Tonic - Contact Us with our form or call us here is our phone number"
    gr_desc = "xsdfghjgklyjreraz"

    en_title = "Contact Us"
    gr_title = ""

    {
      title: request.original_url.include?("gr") ? gr_title : en_title,
      type: "website",
      image: "https://www.tonic-society.com/assets/home_background-7176d7033963e50dc91ecc3c193c764a2afb3d0a2164caa6f6bf2037348ca2fc.png",
      description: request.original_url.include?("gr") ? gr_desc : en_desc,
      site_name: "Tonic - Nails & Jewelry",
      alternate: { "en" => "https://tonic-society.com/en/contacts", "gr" => "https://tonic-society.com/gr/contacts" }
    }
  end

  def change_for_languages
    if params[:locale] == "en" || params[:locale].nil?
      @categories = Message::CATEGORIES_EN
      @sub_categories = Message::SUB_CATEGORIES_EN
    else
      @categories = Message::CATEGORIES_GR
      @sub_categories = Message::SUB_CATEGORIES_GR
    end
  end
end
