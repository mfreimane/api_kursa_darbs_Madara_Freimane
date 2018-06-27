require 'rest-client'

def  check_profile_info(user)
  response = API.get('http://195.13.194.180:8090/api/profile',
                     headers: {'Authorization' => user.auth_token},
                     cookies: {})
  # check if 200 OK  is received
  assert_status_code(200, response, "Profile check")
  response_hash = JSON.parse(response)

  # Check if id is correct
  assert_equal(user.id, response_hash['id'], 'Id is not match!')
  # Check if email is correct
  assert_equal(user.email, response_hash['email'], 'Email is not match!')
  # Check if firstName is correct
  # assert_equal(user.firstName, response_hash['firstName'], 'firstName is not match!')
  # # Check if lastName is correct
  # puts response
  # assert_equal(user.lastName, response_hash['lastName'], 'lastName is not match!')
  puts response
  puts response_hash['firstName']
  assert_equal(user.firstName, response_hash['firstName'], 'firstName is not correct!')
  #Check if lastName is correct
  puts response
  puts response_hash['lastName']
  puts user.firstName
  puts user.lastName
  assert_equal(user.lastName, response_hash['lastName'], 'lastName is not correct!')
end