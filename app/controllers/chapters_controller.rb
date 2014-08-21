class ChaptersController < ApplicationController

  def index
    @chapter = Chapter.new
    @chapters = Chapter.all
    render('chapters/index.html.erb')
  end

  def create
    @chapter = Chapter.new(params[:chapters])
    if @chapter.save
      redirect_to("/chapters/#{@chapter.id}")
    else
      render('chapters/index.html.erb')
    end
  end

  def show
    @chapter = Chapter.find(params[:id])
    render('chapters/show.html.erb')
  end

  def edit
    @chapter = Chapter.find(params[:id])
    render('chapters/edit.html.erb')
  end

  def update
    @chapter = Chapter.find(params[:id])
    if @chapter.update(params[:chapters])
      redirect_to("/chapters")
    else
      render('chapters/edit.html.erb')
    end
  end

  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.delete
    redirect_to("/chapters")
  end
end
