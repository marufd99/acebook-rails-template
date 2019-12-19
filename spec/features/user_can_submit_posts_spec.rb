require 'rails_helper'
require 'features/web_helpers.rb'

RSpec.feature "Timeline", type: :feature do

  scenario "Can submit posts and view them along with the creation date and time" do
    visit root_path
    click_on "Sign Up"
    save_and_open_page
    sign_up
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content(Time.now.strftime("%d/%m/%Y"))
  end

  scenario "Can view posts with the latest post first" do
    sign_up
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_link "New post"
    fill_in "Message", with: "Goodbye, world!"
    click_button "Submit"
    save_and_open_page
    expect(page).to have_content("New post marianne #{Time.now.strftime("%d/%m/%Y")} Goodbye, world! marianne #{Time.now.strftime("%d/%m/%Y")} Hello, world!")
  end

end
