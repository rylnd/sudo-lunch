100.times do
  begin
    FactoryGirl.create(:restaurant)
    print '.'
  rescue ActiveRecord::RecordInvalid
    puts 'Database already seeded.'
    break
  end
end

puts "#{Restaurant.count} restaurants in the database"
