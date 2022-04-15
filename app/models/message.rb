# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :inbox
  belongs_to :user

  validates :body, presence: true
  validates :body, uniqueness: { scope: :inbox_id }
  validates :body, length: { in: 3..1000 }
end
