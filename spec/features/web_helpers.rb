def sign_up
  visit root_path
  click_button "Sign Up"
  fill_in "Name", with: "Marianne"
  fill_in "user[username]", with: "marianne"
  fill_in "user[email]", with: "me@me.com"
  fill_in "user[password]", with: "123456"
  click_button "Create User"
end

def log_in

end
