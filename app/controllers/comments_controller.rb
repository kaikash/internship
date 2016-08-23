class CommentsController < ApplicationController
  before_action :authenticate_user!
  expose_decorated(:post, id: :post_id)

  expose_decorated(:comments) { Comment.where(post: post) }
  expose(:comment, parent: :post)

  def create
    authorize(comment)
    self.comment = post.comments.build if comment.save
    render template: "comments/fragment"
  end

  def destroy
    authorize(comment)
    comment.destroy
    redirect_to post, notice: "Comment has been deleted"
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user: current_user)
  end
end
