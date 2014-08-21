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
end
