class Newsfeed < ApplicationRecord
  belongs_to :user
  has_one_attached :cover_picture
  has_many :messages
  has_many :comments

	# scope :active,-> {joins(:status).merge(Status.active)} 
	# scope :unread, -> {where (read: false)}

	scope :search_by_comments, -> {joins(:comments).merge(Comment.null_comment_check)}
  # scope :search_by_comments, -> {where("title LIKE ?","%" + params[:q]+"%")}


end
