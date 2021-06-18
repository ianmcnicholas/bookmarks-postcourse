# frozen_string_literal: true

feature 'adding bookmarks' do
  scenario 'form and button to submit new bookmark on the home page' do
    visit('/')
    expect(page).to have_field 'url'
    expect(page).to have_field 'title'
    expect(page).to have_button 'Add bookmark'
  end

  # scenario 'visiting the bookmarks page' do
  #   connection = PG.connect(dbname: 'bookmark_manager_test')
  #
  #   connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers');")
  #   connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.facebook.com', 'Facebook');")
  #   connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.twitter.com', 'Twitter');")
  #   connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google');")
  #
  #   visit('/bookmarks')
  #   expect(page).to have_content 'http://www.makersacademy.com'
  #   expect(page).to have_content 'http://www.facebook.com'
  #   expect(page).to have_content 'http://www.google.com'
  #   expect(page).to have_content 'http://www.twitter.com'
  # end
end
