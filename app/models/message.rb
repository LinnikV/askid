# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :inbox, counter_cache: true
  belongs_to :user

  validates :body, presence: true
  validates :body, length: { in: 3..1000 }

  acts_as_votable

  def upvote!(user)
    if user.voted_up_on? self, vote_scope: 'like'
      unvote_by user, vote_scope: 'like'
    else
      upvote_by user, vote_scope: 'like'
    end
  end
end
