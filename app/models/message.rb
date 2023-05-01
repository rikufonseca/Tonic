class Message < ApplicationRecord
  after_create :send_incoming_mail

  belongs_to :contact
  accepts_nested_attributes_for :contact

  validates :content, :categories, presence: true

  SUB_CATEGORIES_EN = ["Products", "Jewellery", "Nails Design", "Nails Artist", "Jewelry Artist"]
  CATEGORIES_EN = ["Question", "Complain", "Work with us"]

  SUB_CATEGORIES_GR = ["Προϊόντα", "Κοσμήματα", "Σχεδιασμός νυχιών", "Τεχνίτρια-ης νυχιών", "Καλλιτέχνης κοσμημάτων"]
  CATEGORIES_GR = ["Ερώτηση", "Παράπονo", "Εργαστείτε μαζί μας"]

  private

  def send_incoming_mail
    MessageMailer.with(message: self).incoming.deliver_now
    MessageMailer.with(message: self).thanks.deliver_now
  end
end
