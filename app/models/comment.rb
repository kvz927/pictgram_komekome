class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates :user_id, presence: true

end
