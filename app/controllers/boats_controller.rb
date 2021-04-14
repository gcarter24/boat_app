class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render "index.html.erb"
  end

  def show
    @boat = Boat.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @boat = Boat.new(name: params[:name], capacity: params[:capacity], color: params[:color], year: params[:year], price: params[:price])
    @boat.save
    redirect_to "/boats/#{@boat.id}"
  end

  # def update
  #   @boat = Boat.find_by(id: params[:id])
  #   @boat.update(name: params[:name], capacity: params[:capacity], color: params[:color], year: params[:year], price: params[:price])
  #   @boat.save
  #   redirect_to "/boats/#{boat.id}"
  # end
end
