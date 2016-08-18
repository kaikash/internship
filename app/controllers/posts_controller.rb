class PostsController < ApplicationController
  expose_decorated(:posts) { paginated_posts }
  expose_decorated(:post)

  expose_decorated(:comments, from: :post)
  expose_decorated(:comment) { Comment.new(post: post) }
  
  def index
  end

  def show
  end

  def new
    authorize post
  end

  def create
    post.user = current_user
    authorize post
    if post.save
      redirect_to post, notice: "Post was created"
    else
      render :new
    end
  end

  def edit
    authorize post
  end

  def update
    authorize post
    if post.update(post_params)
      redirect_to post, notice: "Post was updated"
    else
      render :edit
    end
  end

  def destroy
    post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def paginated_posts
    Post.includes(comments: :user).order(created_at: :desc).page(params[:page])
  end

  def authorize_user!
    authorize(post, :manage?)
  end
end
