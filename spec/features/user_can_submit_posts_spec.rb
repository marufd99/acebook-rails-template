require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them along with the creation date and time" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content(Time.now.strftime("%d/%m/%Y"))
  end

  scenario "Can view posts with the latest post first" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_link "New post"
    fill_in "Message", with: "Goodbye, world!"
    click_button "Submit"
    expect(page).to have_content("Goodbye, world! #{Time.now.strftime("%d/%m/%Y")} 1 Hello, world!")
  end

end
