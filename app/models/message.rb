# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :inbox
  belongs_to :user

  validates :body, presence: true
  validates :body, length: { in: 3..1000 }
end
