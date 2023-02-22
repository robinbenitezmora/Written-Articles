class ArticlesController < ApplicationController
  def index
    @lectures = Lecture.all
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(title: "...", body: "...")

    if @lecture.save
      redirect_to @lecture
    else
      render :new, status: :unprocessable_entity      
    end
  end
end
