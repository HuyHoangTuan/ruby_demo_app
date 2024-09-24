class CommentsController < ApplicationController
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
    public
        def create
            @article = Article.find(params[:article_id])
            # puts @article
            @comment = @article.comments.create(comment_params)
            puts "#{@comment.commenter} #{@comment.body} #{@comment.article_id} #{@comment.errors.empty?}"
            redirect_to article_path(@article)
        end

end
