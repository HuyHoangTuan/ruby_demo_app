class CommentsController < ApplicationController
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
    public
        def create
            @article = Article.find(params[:article_id])
            @comment = @article.comments.build(comment_params)
            # puts "#{@comment.commenter} #{@comment.body} #{@comment.article_id} #{@comment.errors.empty?}"

            if @comment.save
                redirect_to article_path(@article)
            else
                # puts "#{@comment.commenter} #{@comment.body} #{@comment.article_id} #{@comment.errors.empty?}"
                render :'articles/show', status: :unprocessable_content
            end
        end

end
