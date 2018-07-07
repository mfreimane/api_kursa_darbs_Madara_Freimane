

# def reset_test_user(correct_user_data, firstName, lastName)
#   changed_user = get_user(firstName, lastName)
#   changed_user['firstName'] = correct_user_data['first_name']
#   changed_user['lastName'] = correct_user_data['last_name']
#
#   # rest_response = put('http://195.13.194.180:8090/api/profile',
#   #                     headers: { 'Content-Type' => 'application/json',
#   #                                'Authorization' => user.auth_token},
#   #                     cookies: {},
#   #                     payload: changed_user.to_json)
#   # puts 'firstName'
#   # expect(rest_response.code).to eq(204), "Cannot change user! Response : \n #{rest_response}"
# end
#
# # def get_user(user)
# #   user_list_response = get('http://195.13.194.180:8090/api/profile',
# #                            headers:{'Authorization' => user.auth_token, 'Content-Type' => 'application/json'},
# #                            cookies: {})
# #   expect(user_list_response.code).to eq(200), "Cannot find users! Response : \n #{user_list_response}"
# #   user_list_hash = JSON.parse(user_list_response)
# #   user_found = false
# #   user_info = nil
# #   user_list_hash['content'].each do |profile|
# #     next unless profile['email'] == user_email.downcase
# #     user_found = true
# #     user_info ||= profile
# #   end
# #   expect(user_found).to eq(true), "Failed to find the correct user! Response : \n #{user_list_response}"
# #   user_info
# # end
# # #
# # # API.get('http://195.13.194.180:8090/api/profile',
# # # #                      headers: {'Authorization' => user.auth_token, 'Content-Type' => 'application/json'},
# # # #                      cookies: {},
# # # #                      # payload: payload
# # # #   )
# #
#
# def get_user(user)
#   response = API.get('http://195.13.194.180:8090/api/profile',
#                      headers: {'Authorization' => user.auth_token, 'Content-Type' => 'application/json'},
#                      cookies: {},)
#   assert_status_code(200, response, "firstName and lastName is changed!")
#   response_hash = JSON.parse(response)
#   # Check if firstName is correct
#   puts response_hash
#   puts ['firstName']
# end