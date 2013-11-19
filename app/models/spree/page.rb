class Spree::Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  delegate :to_s, to: :title
end