class BangersController < ApplicationController
  def index
    bangers = Banger.all
    render json: bangers.as_json
  end

  def create
    banger = Banger.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    banger.save
    render json: banger.as_json
  end

  def show
    banger = Banger.find_by(id: params[:id])
    render json: banger.as_json
  end

  def update
    banger = Banger.find_by(id: params[:id])
    banger.title = params[:title] || banger.title
    banger.album = params[:album] || banger.album
    banger.artist = params[:artist] || banger.artist
    banger.year = params[:year] || banger.year
    banger.save
    render json: banger.as_json
  end

  def destroy
    banger = Banger.find_by(id: params[:id])
    banger.destroy
    render json: { message: "This song is no longer a banger." }
  end
end
