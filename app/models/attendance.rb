class Attendance < ApplicationRecord
  belongs to :user
  belongs to :event
end
