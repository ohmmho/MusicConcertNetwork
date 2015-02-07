class CommentsController < ApplicationController

  def index
    @concert = Concert.find params[:concert_id]
    @comments = @concert.comments.new
  end

  def new
    @concert = Concert.find params[:concert_id]
    @comment = @concert.comments.new
  end

  def create
    @concert = Concert.find params[:concert_id]
    @comment = @concert.comments.new comment_params
    if @comment.save
      redirect_to concert_path(@concert.id)
    else
      render 'new'
    end   
  end


  private 

  def comment_params
    params.require(:comment).permit(:mail, :comment_field)
  end 

end
