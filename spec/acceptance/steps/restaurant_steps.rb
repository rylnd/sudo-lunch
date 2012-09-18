step 'I should see that Restaurant listed' do
  visit '/restaurants.json'
  page.should have_content(@restaurant.name)
end

step 'I should see the changes in the list of Restaurants' do
  step 'I should see that Restaurant listed'
end

step "I should see the tag :tag on the restaurant's page" do |tag|
  visit root_path
  page.should have_content(tag)
end
