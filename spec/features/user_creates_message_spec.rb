require 'rails_helper'

feature 'User creates message' do
  scenario 'valid attributes' do
    visit messages_path

    fill_in 'Name', with: 'message name'
    fill_in 'Body', with: 'body'
    fill_in 'Password', with: 'password'
    click_button('Save Message')

    expect(page).to have_text('message name')
  end
end
