class CommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.build(comment_params)
    if @comment.save
      redirect_to @book, notice: "Comment added."
    else
      redirect_to @book, alert: "Comment can't be blank."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
