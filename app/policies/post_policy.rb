class PostPolicy < ApplicationPolicy
  def manage?
    record.user == user
  end

  def create?
    user
  end

  def new?
    create?
  end

  def edit?
    manage?
  end

  def update?
    manage?
  end

  def destoy?
    manage?
  end
end