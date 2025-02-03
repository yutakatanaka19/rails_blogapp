class StaticPagesController < ApplicationController
  def home
    @posts = Post.left_joins(:liked_users).group(:id).order('COUNT(users.id) DESC').limit(30)
  end

  def thanks
  end
end
