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
  #
  # def set_session_cookie(dancer_session)
  #   @session_cookie = dancer_session
  # end
  #
  # def set_user_id(user_id)
  #   @user_id = user_id
  # end
end