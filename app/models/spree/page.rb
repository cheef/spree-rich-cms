class Spree::Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true
  delegate :to_s, to: :name
end