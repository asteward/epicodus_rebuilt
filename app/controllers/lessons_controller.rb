class LessonsController < ApplicationController
  def index
    @sections = Section.all
    @lesson = Lesson.new
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def create
    @sections = Section.all
    @lesson = Lesson.new(params[:lessons])
    if @lesson.save
      redirect_to("/")
    else
      render('lessons/index.html.erb')
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

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lessons])
      redirect_to('/lessons/')
    else
      render('lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.delete
    redirect_to("/lessons/")
  end
end
