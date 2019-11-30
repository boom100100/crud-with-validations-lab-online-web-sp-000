class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    #<%= f.check_box :released %>
    #<%= f.number_field :release_year %>
  end

  def create
    @song = Song.new(song_params)

    if @song.valid?
      @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  private

  def song_params
    params.permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
