class SectionsController < ApplicationController

  def index
    @section = Section.new
    @sections = Section.all
    @chapters = Chapter.all
    render('sections/index.html.erb')
  end

  def create
    @chapters = Chapter.all
    @section = Section.new(params[:sections])
    if @section.save
      redirect_to("/sections/#{@section.id}")
    else
      render('sections/index.html.erb')
    end
  end

  def show
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(params[:sections])
      redirect_to("/sections")
    else
      render('sections/edit.html.erb')
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.delete
    redirect_to("/sections")
  end
end
