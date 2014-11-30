class Hotel < ActiveRecord::Base
  has_many :rooms
  validates :hotelname, :presence => true
end
