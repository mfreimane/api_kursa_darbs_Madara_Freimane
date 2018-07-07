# ------------------------------------------------------------------------
# -----------------------AFTER HOOKS--------------------------------------

After('@changed_user') do |scenario|
  if scenario.failed?
    @user_data = YAML.load_file('config/test_objects.yml')['madara1@test.com']
    return_the_data_to_its_original_state(@user_data)
  end
end

