class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def popular
    @concerts = Concert.all
    @sorted_concerts = @concerts.sort{|concert| concert.comments.size}    
  end

  def show
    @concert = Concert.find params[:id]
    @comment = Comment.new
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new concert_params
    if @concert.save
      redirect_to concert_path(@concert.id)
    else
      render 'new'
    end  
  end

  private 

  def concert_params
    params.require(:concert).permit(:band, :venue, :date, :price, :city, :description)
  end
end