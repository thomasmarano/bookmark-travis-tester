require "capybara/rspec"
require_relative "../../app"

feature 'Viewing bookmarks' do
  scenario 'visiting the homepage' do

      Bookmark.create('https://www.google.com', 'Google')
      Bookmark.create('https://www.facebook.com', 'Facebook')

      visit '/'
      click_on('View Bookmarks')
      expect(page).to have_content 'Google'
      expect(page).to have_content 'Facebook'
  end
end
