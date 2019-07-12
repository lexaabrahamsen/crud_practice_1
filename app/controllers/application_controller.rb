class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def index
    @photos = Photo.all
    render "index.json.jb"
  end

  def show
    the_id = params[:id]
    @photo = Photo.find_by(id: the_id)
    render "show.json.jb"
  end
end
