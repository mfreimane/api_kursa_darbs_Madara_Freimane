class Post

attr_accessor :id,
              :email,
              :firstName,
              :lastName,
              :password,
              :auth_token,
              :author,
              :content,
              :title,
              :session_cookie

# def initialize(blogpost)
#   @id = blogpost['id']
#   @author = blogpost['author']
#   @content = blogpost[]
#   @title = blogpost[]
# end

def initialize(content, title)
  self.content = content
  self.title = title
end
end