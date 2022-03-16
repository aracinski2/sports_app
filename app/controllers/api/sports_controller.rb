class Api::SportsController < ApplicationController

  def index
    @sports = Sport.all
    render "index.json.jb"
  end
  def show
    @sport = Sport.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @sport = Sport.new(name: params[:name], abbreviation: params[:abbreviation], ball: params[:ball])
    @sport.save
    render "show.json.jb"
  end

  def update
    @sport = Sport.find_by(id: params[:id])
    @sport.name = params[:name]
    @sport.abbreviation = params[:abbreviation]
    @sport.ball = params[:ball]
    @sport.save
    render "show.json.jb"
  end

  def delete
    @sport = Sport.find_by(id: params[:id])
    @sport.delete
    render json: {message: "sport deleted"}
  end
  
end
