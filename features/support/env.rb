# ------------------------------------------------------------------------
# -----------------------AFTER HOOKS--------------------------------------

After('@changed_user') do |scenario|
  if scenario.failed?
    correct_data = YAML.load_file('config/test_objects.yml')['madara1@test.com']
    return_the_data_to_its_original_state(correct_data, 'Madara', 'Freimane')
    # @test_user = User.new('madara1@test.com', 'Parole123')
  end
end

