# class MyValidator < ActiveModel::MyValidator
#   def validate(song)
#     if song.released && !song.release_year 
#       # song.errors[:release_year] = “release year is blank”
#     end
#   end
# end

class Song < ActiveRecord::Base
  # include ActiveModel::Validations
  # validates_with MyValidator
  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: { in: [true, false]}
  validates :release_year, presence: true

end
