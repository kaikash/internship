module Users  
  class PostsController < Users::ApplicationController
    expose_decorated(:user) { find_by_username }
    expose_decorated(:posts) { paginated_posts }
    def index
    end

    private
    def paginated_posts
      user.posts.includes(comments: :user).order(created_at: :desc).page(params[:page])
    end

    def find_by_username
      User.find_by_username params[:user_username]
    end
  end
end
