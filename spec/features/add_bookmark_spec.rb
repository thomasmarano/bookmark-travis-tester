require "capybara/rspec"
require_relative "../../app"

feature "add bookmark" do
    scenario "add bookmark and see it displayed" do
        visit '/'
        click_on('View Bookmarks')
        fill_in('new_bookmark', with: 'https://www.appking.com')
        fill_in('title', with: 'AppKing')
        click_on('Add as Bookmark')
        expect(page).to have_content('AppKing')
    end
end
