require 'rest-client'

def sign_up_positive
  payload = {
      'email' => 'madara1@test.com',
      'firstName' => 'Madara',
      'lastName' => 'Freimane',
      'password' =>  'parole123'
  }.to_json
  response = API.post('http://195.13.194.180:8090/api/sign-up',
                      headers: {'Content-Type' => 'application/json'},
                      cookies: {},
                      payload: payload)
  assert_equal(200, response.code, "Failed to create a new account! Response : #{response}")
end