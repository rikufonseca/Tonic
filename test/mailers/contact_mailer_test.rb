require "test_helper"

class ContactMailerTest < ActionMailer::TestCase
  test "thank-you" do
    mail = ContactMailer.thank-you
    assert_equal "Thank-you", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
