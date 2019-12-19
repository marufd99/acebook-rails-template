def sign_up
  visit root_path
  click_on "Sign Up"
  fill_in "name", with: '123'
  fill_in "user[username]", with: "marianne"
  fill_in "user[email]", with: "me@me.com"
  fill_in "user[password]", with: "123456"
  click_button "Create User"
end

def log_in

end
