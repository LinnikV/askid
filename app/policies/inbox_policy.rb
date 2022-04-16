# frozen_string_literal: true

class InboxPolicy < ApplicationPolicy
  def edit?
    record.user == user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
