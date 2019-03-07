class OpinionsController < ApplicationController
  def start
  end
  
  
  def index
    @opinions = Opinion.all
    @opinion = Opinion.new
  end

  
  def create
    opinion = Opinion.new(opinion_params)
    opinion.save
    redirect_to opinions_path
  end

  def show
    @opinion = Opinion.find(params[:id])
  end

  def edit
    @opinion = Opinion.find(params[:id])
  end

  def update
    opinion = Opinion.find(params[:id])
    opinion.update(opinion_params)
    redirect_to opinion_path(opinion)
  end

  def destroy
    opinion = Opinion.find(params[:id])
    opinion.destroy
    redirect_to opinions_path
  end

  private
  def opinion_params
      params.require(:opinion).permit(:title, :body)
  end
end
