class ShiftTime < ActiveRecord::Base
  has_many :shifts, dependent: :destroy
end
