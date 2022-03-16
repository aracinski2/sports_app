class Api::SportsController < ApplicationController

  def index
    @sports = Sport.all
    render "index.json.jb"
  end
  def show
    @sport = Sport.find_by(id: params[:id])
    render "show.json.jb"
  end
  
end
