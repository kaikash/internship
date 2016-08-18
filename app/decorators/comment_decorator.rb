class CommentDecorator < ApplicationDecorator
  delegate :id, :content
  delegate :name, :full_name, :username, to: :commenter, prefix: true

  def time_created_in_words
    h.time_ago_in_words(object.created_at)
  end
  
  private
  def commenter
    @commenter ||= object.user.decorate
  end
end
