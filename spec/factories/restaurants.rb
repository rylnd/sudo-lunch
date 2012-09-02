FactoryGirl.define do
  sequence(:name) { |n| "Restaurant #{n}" }

  factory :restaurant do
    name
  end
end
