require "rails_helper"

RSpec.describe Message, type: :model do
  describe "encrypting a message" do
    it "requires the correct password" do
      message = Message.create(password: "something", body: "A secret")

      expect do
        message.password = "something else"
        message.reload.body
      end.to raise_error(OpenSSL::Cipher::CipherError)
    end

    it "allows the body to be read with the correct password set" do
      message = Message.create(password: "master pass", body: "A secret")

      message.reload
      message.password = "master pass"

      expect(message.body).to eq("A secret")
    end
  end
end
