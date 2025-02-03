class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def new
        @post = Post.new
    end
      
    def create
        @post = current_user.posts.build(post_params)    
        if @post.save
        redirect_to root_path, notice: "記事を作成しました！"
        else render :new end
    end

    def show
    end

    def edit
        redirect_to root_path unless @post.user == current_user
    end

    def update
        if @post.update(post_params)
            redirect_to root_path, notice: "記事を更新しました！"
        else render :edit end
    end
    
    def destroy
        @post = Post.find(params[:id])
        if @post.user == current_user
            @post.destroy
            redirect_to root_path, notice: "記事を削除しました！"
        else redirect_to root_path end
    end

    private
    
    def post_params
        params.require(:post).permit(:title, :text, :image)
    end

    def set_post
        @post = Post.find(params[:id])
    end
end
