class Section < ActiveRecord::Base
  has_many :lessons
  belongs_to :Section

  validates :name, presence: true

  def contents(chap_id)
    sections = Section.where({section_id: chap_id })
  end
end
