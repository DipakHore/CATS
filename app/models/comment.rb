class Comment < ActiveRecord::Base
  attr_accessible :assignment_id, :body
end
