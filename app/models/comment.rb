class Comment < ActiveRecord::Base
  attr_accessible :body, :job_id, :name
  belongs_to :job  

  validates :body, presence: true
  validates :job_id, presence: true
  validates :name, presence: true

end
