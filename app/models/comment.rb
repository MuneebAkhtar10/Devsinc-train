class Comment < ApplicationRecord
  belongs_to :newsfeed

  scope :null_comment_check,->{where(commenter: empty?)}

end
