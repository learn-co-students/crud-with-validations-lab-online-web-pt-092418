
class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :released, inclusion: {in: [true, false]}
  validates :release_year, presence: true, unless: :released?
  validates :release_year, numericality: {less_than_or_equal_to: Date.current.year, allow_nil: true}
  validates :artist_name, presence: true

  def released?
    self.released == false
  end
  def to_s
    self.title + " " + self.artist_name
  end
end