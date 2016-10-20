require 'rails_helper'

feature 'User views message body' do
  scenario 'password correct' do
    create(:message, password: 'password', body: 'body', name: 'name')

    visit new_message_view_path

    fill_in 'Name', with: 'name'
    fill_in 'Password', with: 'password'
    click_button('View')

    expect(page).to have_text('body')
  end
end
