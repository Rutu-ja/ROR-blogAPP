class BlogPostsController < ApplicationController
    def index
        @blog_posts = BlogPost.all  #instanace variable 
    end 

    def show 
        @blog_posts = BlogPost.find(params[:id])
    end
end