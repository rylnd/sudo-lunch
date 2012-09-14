step 'I have an admin' do
  @admin = create(:admin_user, email: 'admin@example.com', password: 'password')
end

step 'I have a Restaurant' do
  @restaurant = create(:restaurant, name: 'Restaurant')
end
