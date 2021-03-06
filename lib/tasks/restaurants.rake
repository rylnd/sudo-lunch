require 'csv'
namespace :restaurants do

  def load_restaurants_from_csv
    options = { headers: true, header_converters: :symbol }

    CSV.foreach("#{Rails.root}/support/restaurants.csv", options) do |row|
      Restaurant.where(name: row[:name]).first_or_create!
      print '.'
    end
    puts "#{Restaurant.count} restaurants in the database"
  end

  desc 'import restaurants from support/restaurants.csv'
  task :import => :environment do
    load_restaurants_from_csv
  end
end

