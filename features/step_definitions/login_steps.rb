Given(/^I have logged in as a regular user$/) do
  @user = User.new('madara1@test.com', 'parole123')
  login_positive(@user)
end