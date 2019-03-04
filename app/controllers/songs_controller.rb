class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render new_song_path
    end
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update

    @song = Song.find_by(id: params[:id])
    if @song.update(song_params) #@song.valid?
      redirect_to song_path(@song)
    else
      render :edit #edit_song_path
    end

  end

  def destroy
    Song.find_by(params[:id]).destroy
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end


end #end of class
