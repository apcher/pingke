class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    #@comment = Comment.new(comment_params)
    #@comment.save
    respond_to do |format|
      format.js
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :course_id, :user_id)
  end

end
