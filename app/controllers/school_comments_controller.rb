class SchoolCommentsController < ApplicationController
  def create
    @school_comment = SchoolComment.new(school_comment_params)
    @school = School.find(params[:school_id])
    @school_comment.school_id = @school.id
     if @school_comment.save
       redirect_to school_path(@school), notice: "You have created school_comment successfully."
     else
       render "schools/show"
     end
  end

  def destroy
    school_comment = SchoolComment.find(params[:id])
    school_comment.destroy
    redirect_to request.referer
  end

  private
  def school_comment_params
    params.require(:school_comment).permit(:position, :number, :rate, :review)
  end

end
