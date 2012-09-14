step 'I am logged in as an admin' do
  step 'I have an admin'
  step 'I am on the dashboard'

  fill_in 'Email', with: @admin.email
  fill_in 'Password', with: @admin.password

  click_on 'Login'
end

step 'I add a new Restaurant' do
  click_on 'Restaurants'
  click_on 'New Restaurant'

  name = 'New Restaurant'
  fill_in 'Name', with: name

  @restaurant = Restaurant.new(name: name)

  click_on 'Create Restaurant'
end

step 'I edit that Restaurant' do
  visit edit_admin_restaurant_path(@restaurant)
  fill_in 'Name', with: 'Edited Restaurant'
  click_on 'Update Restaurant'
end
