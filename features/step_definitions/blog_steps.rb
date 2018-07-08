# blogpost_id=0
When(/^I find another User blog post id: (.*)$/) do |author_id|
   @blogpost_id = find_another_user_blog_post(author_id, @user, @post)
end

And(/^I update another User blog post$/) do
  # @post = Post.new("content", "title")
  update_another_user_blog_post(@blogpost_id, @user, @post)
end