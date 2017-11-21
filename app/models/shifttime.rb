class Shifttime < ActiveRecord::Base
has_many :shifts, dependent: :destroy
end
