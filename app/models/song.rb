class MyValidator < ActiveModel::Validator
  def validate(song)
    if song.released && !song.release_year 
      song.errors[:release_year] = "Release year required if released true"
     end
   end
 end

class Song < ActiveRecord::Base
   include ActiveModel::Validations
  validates_with MyValidator
  validates :title, presence: true, uniqueness: true
  #validates :released, inclusion: { in: [true, false]}
  validates :release_year, 

end
