class Lesson < ActiveRecord::Base
  belongs_to :section

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
    @lesson = Lesson.find(self.id)
    prev_lesson = Lesson.find_by(lesson_number: (@lesson.lesson_number - 1))
    if prev_lesson
      prev_lesson.id
    end
  end
end
