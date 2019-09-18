class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] = "コメントを投稿しました。"
      redirect_to comment.blog
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to comment.blog, flash: {notice: "コメントが削除されました。"}
  end

  private
  def comment_params
    params.require(:comment).permit(:blog_id, :name, :comment)
  end

end
