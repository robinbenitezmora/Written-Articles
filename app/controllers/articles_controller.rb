class ArticlesController < ApplicationController
  def index
    @lectures = Lecture.all
  end
end
