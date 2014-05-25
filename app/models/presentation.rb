class Presentation < ActiveRecord::Base

  belongs_to :employee
  has_many :feedbacks , through: :presentation_feedbacks
  has_many :presentation_feedbacks
end
