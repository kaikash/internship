class CommentPolicy < ApplicationPolicy
  def manage?
    record.user == user
  end

  def create?
    user
  end

  def destroy?
    manage?
  end
end