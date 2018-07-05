Then(/^I have access to my profile information$/) do
  check_profile_info(@user)
end

And(/^I change firstName and lastName$/) do
  change_firsName_and_lastName(@user)
end

And(/^I return the data to its original state$/) do
  return_the_data_to_its_original_state(@user)
end
