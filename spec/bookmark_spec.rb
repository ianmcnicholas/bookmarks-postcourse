# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  describe '#.all'
  it 'returns all bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.facebook.com', 'Facebook');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.twitter.com', 'Twitter');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google');")

    bookmarks = Bookmark.all
    
    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.facebook.com')
    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://www.twitter.com')
  end
end
