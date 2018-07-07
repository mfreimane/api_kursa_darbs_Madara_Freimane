class User
  attr_accessor :id,
                :email,
                :firstName,
                :lastName,
                :password,
                :auth_token
                :session_cookie

  def initialize(email, password)
    @email =  email
    @password = password
    @session_cookie = {}
  end

  def setData(response_hash)
    self.firstName = response_hash['firstName']
    self.lastName = response_hash['lastName']
    self.id = response_hash['id']
  end
end