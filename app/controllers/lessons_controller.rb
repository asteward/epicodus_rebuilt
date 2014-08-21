class LessonsController < ApplicationController
  def index
    @lesson = Lesson.new
    @lessons = Lesson.order(:lesson_number)
    render('/index.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lessons])
    if @lesson.save
      redirect_to("/")
    else
      render('/index.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end
end
