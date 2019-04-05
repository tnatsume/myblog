class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id]);
        @post.comments.create(commnt_params)

        redirect_to post_path(@post)
    end

    def show

    end

    def edit
        
    end

    def destroy
        @post = Post.find(params[:post_id]);
        @comment = @post.comments.find(params[:id])
        @comment.destroy

        redirect_to post_path(@post)

    end

    private
        def commnt_params
            params.require(:comment).permit(:body)
        end

end
