class Message < ApplicationRecord
  attr_accessor :password

  attr_encrypted(:body, key: :encryption_key)

  def encryption_key
    password + Rails.application.secrets.secret_key_base
  end
end
