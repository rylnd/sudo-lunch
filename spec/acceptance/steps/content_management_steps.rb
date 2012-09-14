step 'I am logged in as an admin' do
  step 'I have an admin'
  step 'I am on the dashboard'

  fill_in 'Email', with: @admin.email
  fill_in 'Password', with: @admin.password

  click_on 'Login'
end

step 'I have an admin' do
  @admin = create(:admin_user, email: 'admin@example.com', password: 'password')
end
