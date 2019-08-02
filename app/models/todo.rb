class Todo < ApplicationRecord
  validates_presence_of :text, :message => 'Can not be blank'
  validates_presence_of :project_id, :message => 'Please specify category'
  belongs_to :project
end
