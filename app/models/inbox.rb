# frozen_string_literal: true

class Inbox < ApplicationRecord
  belongs_to :user
  has_many :messages, -> { order(created_at: :desc) }, dependent: :destroy, inverse_of: :inbox
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 3..500 }
end
