require 'rest-client'
require 'test-unit'

def check_profile_info(user)
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
  assert_equal(user.firstName, response_hash['firstName'], 'firstName is not correct!')
  # Check if lastName is correct
  assert_equal(user.lastName, response_hash['lastName'], 'lastName is not correct!')
end

def change_firsName_and_lastName(user)

  user.firstName = "firstname#{Time.now.to_i}"
  user.lastName = "lastname#{Time.now.to_i}"

  payload = {
      # :login => user.email,
      # :password => user.password
      'firstName' => user.firstName,
      'lastName' => user.lastName
  }.to_json
  response = API.put('http://195.13.194.180:8090/api/profile',
                     headers: {'Authorization' => user.auth_token, 'Content-Type' => 'application/json'},
                     cookies: {},
                     payload: payload)
  #check if 200 OK  is received
  assert_status_code(200, response, "firstName and lastName is changed!")
  response_hash = JSON.parse(response)
  # Check if firstName is correct
  puts response_hash
  puts ['firstName']
  assert_equal(user.firstName, response_hash['firstName'], 'firstName is not correct!')
  # Check if lastName is correct
  puts response_hash
  puts ['lastName']
  assert_equal(user.lastName, response_hash['lastName'], 'lastName is not correct!')

  # @test_user.set_session_cookie(response.cookies)
  #
  # @test_user.set_user_id(response_hash['user_id'])

end

def return_the_data_to_its_original_state(user, firstName, lastName)

  payload = {
      'firstName' => firstName,
      'lastName' => lastName
  }.to_json
  response = API.put('http://195.13.194.180:8090/api/profile',
                     headers: {'Authorization' => user.auth_token, 'Content-Type' => 'application/json'},
                     cookies: {},
                     payload: payload)
  assert_status_code(200, response, "firstName and lastName is changed!")
  response_hash = JSON.parse(response)
  # Check if firstName is correct
  puts response_hash
  puts ['firstName']


  # assert_equal(user.firstName, response_hash['firstName'], 'firstName is not correct!')
  # # Check if lastName is correct
  # puts response_hash
  # puts ['lastName']
  # assert_equal(user.lastName, response_hash['lastName'], 'lastName is not correct!')
end