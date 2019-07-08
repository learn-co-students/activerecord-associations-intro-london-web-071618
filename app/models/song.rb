class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
<<<<<<< HEAD

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.create(name: "Drake")
    drake.songs << self
    self.artist = drake
    # when this method is called it should assign the song's artist to Drake
  end
=======
>>>>>>> d9cfc58b9923e9b81f505bcf7953a2a947fb16ea
end
