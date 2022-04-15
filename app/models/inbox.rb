# frozen_string_literal: true

class Inbox < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 3..200 }
end
