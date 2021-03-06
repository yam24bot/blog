class PostsController < ApplicationController
    
    before_action :set_post, only:[ :show, :edit, :update, :destroy]


    
    def index
        @posts = Post.all
    end

    def show
        # @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post, success: 'Стать успешно создана'
        else
            render :new, danger: 'Статья не обновлена'
        end
    end

    def edit 
        # @post = Post.find(params[:id])
    end

    def update
        # @post = Post.find(params[:id])
        if @post.update_attributes(post_params)
            redirect_to @post, info: 'Статья успешно обновлена'
        else
            render :edit, danger: 'Статья не обновлена'
        end

    end

    def destroy
        # @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, success: 'Успешно удалено'
    end
    
    private

    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :summary, :body, :image, :all_tags)
    end
    
end