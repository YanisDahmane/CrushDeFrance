class City < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :posts
  has_one_attached :avatar

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["users"]
  end
end
