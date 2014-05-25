class Feedback < ActiveRecord::Base
  belongs_to :employee
  has_attached_file :logo
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
