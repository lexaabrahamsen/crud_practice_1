class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  
  def index
    @photos = Photo.all
    render "index.json.jb"
  end
end
