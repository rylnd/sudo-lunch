step 'I have an admin' do
  @admin = create(:admin_user, email: 'admin@example.com', password: 'password')
end

step 'I have a Restaurant' do
  @restaurant = create(:restaurant)
end

step 'I have a Restaurant tagged with :tag' do |tag|
  create(:restaurant, tag_list: tag)
end
