class Inbox < ApplicationRecord

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: { in: 3..200 }
end
