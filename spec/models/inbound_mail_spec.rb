require 'spec_helper'

describe InboundMail do
  describe "validations" do
    it { should validate_presence_of(:recipient) }
    it { should validate_presence_of(:raw_message) }
  end

  context "new_from_message" do
    let(:raw_email) { File.read(raw_email_path) }
    let(:mail) { Mail.new(raw_email) }

    it "should create a new object from a Mail message" do
      test = InboundMail.new_from_message(mail)
      test.should be_a(InboundMail)
      test.recipient.should == mail.to.first
      test.raw_message.should == mail.to_s
    end
  end

  context "message" do
    let(:mail) { Factory.create(:inbound_mail) }

    it "should return a Mail::Message object" do
      mail.message.should be_a(Mail::Message)
    end
  end

  context "factory" do
    it "should have a known recipient" do
      mail = FactoryGirl.build(:inbound_mail)
      mail.recipient.should == "traumatic@strangeperil.co.uk"
      mail.message.to.first.should == "traumatic@strangeperil.co.uk"
    end

    it "should adjust the recipients" do
      mail = FactoryGirl.build(:inbound_mail, to: "quagmire@giggity.com")
      mail.recipient.should == "quagmire@giggity.com"
      mail.message.to.first.should == "quagmire@giggity.com"
    end
  end
end
