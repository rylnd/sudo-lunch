step 'I should see that Restaurant listed' do
  visit '/restaurants.json'
  page.should have_content(@restaurant.name)
end

step 'I should see the changes in the list of Restaurants' do
  page.should have_content('Edited Restaurant')
end

step "I should see the tag :tag on the restaurant's page" do |tag|
  page.should have_content(tag)
end
