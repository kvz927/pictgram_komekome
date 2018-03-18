class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  validates :user_id, presence: true

  @comment = topic_id,user_id
  @commnet.topic_id = Comment.topic_id
  @comment.user_id = Comment.user_id

end
