step 'I should see that Restaurant listed' do
  visit '/restaurants.json'
  page.body.should =~ /#{@restaurant.name}/
end

step 'I should see the changes in the list of Restaurants' do
  step 'I should see that Restaurant listed'
end
