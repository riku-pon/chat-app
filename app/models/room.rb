class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
  def new
    @room = Room.new
  end

  validates :name, presence: true
end
