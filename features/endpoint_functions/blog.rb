require 'rest-client'
require 'test-unit'

def find_another_user_blog_post(author_id, user, post)
  response = API.get('http://195.13.194.180:8090/api/posts?=' + author_id.to_s,
                 headers: {'Authorization' => user.auth_token},
                 cookies: {})
  assert_status_code(200, response, 'Get blog post!')
  response_hash = JSON.parse(response)
  return response_hash[0]['id']
end

def update_another_user_blog_post(blogpost_id, user, post)
  # post.content = "content#{Time.now.to_i}"
  # post.title = "titile#{Time.now.to_i}"
  payload = {
          'content' => post.content,
          'title' => post.title
  }.to_json
  response = API.put('http://195.13.194.180:8090/api/post?post_id=' + blogpost_id.to_s,
                     headers: {'Content-Type' => 'application/json', 'Authorization' => user.auth_token},
                     cookies: {},
                     payload: payload)
  assert_status_code(403, response, "Blogpost not updated!")
  response_hash = JSON.parse(response)
  assert_equal("You cannot edit a post that has not been created by you!", response_hash['message'], 'Error message is not correct')
  puts response_hash
end