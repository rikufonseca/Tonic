require "date"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    en_desc = "At Tonic, we believe in creating an unparalleled Nail Salon experience, we have a wild range of colour."
    gr_desc = "Στην Tonic, πιστεύουμε στη δημιουργία μιας απαράμιλλης εμπειρίας Nail Salon,
    όπου κάθε λεπτομέρεια είναι σχολαστικά σχεδιασμένη για να σας προσφέρει μια στιγμή καθαρής απόλαυσης."

    en_title = "WHO WE ARE?"
    gr_title = "ΠΟΙΟΙ ΕΙΜΑΣΤΕ?"

    set_meta_tags(
      title: request.original_url.include?("gr") ? en_title : gr_title,
      description: request.original_url.include?("gr") ? gr_desc : en_desc,
      reverse: true,
      og: og_params,
      canonical: "https://tonic-society.com"
    )

    @pictures = picture(Date.today.to_s)

  end

  private

  def og_params
    en_desc = "At Tonic, we believe in creating an unparalleled Nail Salon experience,
    where every detail is meticulously crafted to provide you with a moment of pure indulgence."
    gr_desc = "Στην Tonic, πιστεύουμε στη δημιουργία μιας απαράμιλλης εμπειρίας στο Nail Salon,
    όπου κάθε λεπτομέρεια είναι σχολαστικά σχεδιασμένη για να σας προσφέρει μια στιγμή καθαρής απόλαυσης."

    en_title = "Tonic - WHO WE ARE?"
    gr_title = "Tonic"

    {
      title: request.original_url.include?("gr") ? gr_title : en_title,
      type: "website",
      image: "https://www.tonic-society.com/assets/home_background-7176d7033963e50dc91ecc3c193c764a2afb3d0a2164caa6f6bf2037348ca2fc.png",
      description: request.original_url.include?("gr") ? gr_desc : en_desc,
      site_name: "Tonic - Nails & Jewelry",
      alternate: { "en" => "https://tonic-society.com/en", "gr" => "https://tonic-society.com/gr" }
    }
  end

  def picture(date_str)
    date = Date.parse(date_str)

    if (date.month == 12 && date.day >= 1 && date.day <= 31) ||
       (date.month == 1 && date.day >= 1 && date.day <= 31)
      "photo-winter"
    elsif date.month == 2 && date.day >= 1 && date.day <= 29
      return "Happy Valentine's Day!"
    elsif date.month == 4 && date.day >= 1 && date.day <= 29
      return "Happy Easter!"
    elsif (date.month == 10 && date.day >= 1 && date.day <= 31) ||
          (date.month == 11 && date.day >= 1 && date.day <= 30 )
      "photo-automn"

    end
  end
end
