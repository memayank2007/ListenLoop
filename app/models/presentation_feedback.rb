class PresentationFeedback < ActiveRecord::Base
  belongs_to :presentation
  belongs_to :feedback

end
