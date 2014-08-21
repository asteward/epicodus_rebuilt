class Lesson < ActiveRecord::Base
  validates :name, presence: true
  validates :content, presence: true
  validates :lesson_number, presence: true, uniqueness: true

  def next
    @lesson = Lesson.find(self.id)
    next_lesson = Lesson.find_by(lesson_number: (@lesson.lesson_number + 1))
    if next_lesson
      next_lesson.id
    end
  end

  def prev
    @lesson = Lesson.find(params[:id])
    prev_lesson = Lesson.find_by(lesson_number: (@lesson.lesson_number - 1))
    prev_lesson.id
  end
end
