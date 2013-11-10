FactoryGirl.define do
  factory :page, class: Spree::Page do
    name { Faker::Lorem.words(5).join(' ') }
  end
end