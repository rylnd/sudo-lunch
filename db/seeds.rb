require 'csv'

def load_restaurants_from_csv
  opts = {:headers => true, :header_converters => :symbol}

  CSV.foreach("#{Rails.root}/support/restaurants.csv", opts) do |row|
    Restaurant.where(name: row[:name]).first_or_create!
    print '.'
  end
end

load_restaurants_from_csv
