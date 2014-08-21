class LessonsController < ApplicationController
  def index
    @lessons = Lesson.order(:lesson_number)
    render('/index.html.erb')
  end
end
