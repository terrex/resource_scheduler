class Reservation < ApplicationRecord
  belongs_to :room
  validates_presence_of :room, :reserved_by
  validates_associated :room

  def room_title
    room.try(:title)
  end

  def room_title=(title)
    self.room = Room.find_by(title: title) if title.present?
  end
end
