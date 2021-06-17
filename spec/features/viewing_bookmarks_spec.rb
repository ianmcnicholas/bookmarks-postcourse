feature "viewing bookmarks" do

  scenario "visiting the home page" do
    visit('/')
    expect(page).to have_content "Welcome to your homepage"
  end

  scenario "visiting the bookmarks page" do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end

end
