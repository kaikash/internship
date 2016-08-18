class PostDecorator < ApplicationDecorator
  delegate :id, :title, :content
  delegate :name, :full_name, :username, to: :author, prefix: true

  def intro
    return "#{content[0..30]}..." if content.length > 30  
    content
  end

  def comments_count
    object.comments.length
  end

  private
  def author
    @author ||= object.user.decorate
  end
end
