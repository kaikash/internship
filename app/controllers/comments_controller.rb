class CommentsController < ApplicationController
  expose_decorated(:post)

  expose_decorated(:comments, ancestor: :post)
  expose_decorated(:comment) { Comment.new(post: post) }

  def create
    comment.user = current_user
    comment.content = comment_params[:content]
    if comment.save
      # renede
    else
    end
  end

  def destroy
    comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
