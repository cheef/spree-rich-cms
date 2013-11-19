FactoryGirl.define do
  factory :page, class: Spree::Page do
    title { Faker::Lorem.words(5).join(' ') }
  end
end