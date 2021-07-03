# frozen_string_literal: true

require 'pg'

# this class is for bookmarks
class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
    connection = PG.connect(dbname: 'bookmark_manager')
  end
    # creates a variable called 'connection' and sets it to the connection to the required database
    result = connection.exec('SELECT * FROM bookmarks;')
    # sets 'result' as the specified row(s) in the specified table
    result.map { |bookmark| bookmark['url'] }
    # goes through the row(s) and extracts the particular information required
  end

  def self.create(url, title)
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    p url + "is the url"
    p title
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');")
    # creates a variable called 'connection' and sets it to the connection to the required database
    # result = connection.exec('SELECT * FROM bookmarks;')
    # sets 'result' as the specified row(s) in the specified table
    # result.map { |bookmark| bookmark['url'] }
    # goes through the row(s) and extracts the particular information required
  end

end
