class Room < ApplicationRecord
  has_many :reservations, :dependent => :restrict_with_exception
  validates_presence_of :title
  validates_uniqueness_of :title

  alias_attribute :to_s, :title
end
