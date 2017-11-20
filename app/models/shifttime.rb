class Shifttime < ActiveRecord::Base
has_many :meetings, dependent: :destroy
end
