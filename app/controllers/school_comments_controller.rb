class SchoolCommentsController < ApplicationController
  def create
    @school = School.find(params[:school_id])
    @school_comment = SchoolComment.new(school_comment_params)
    @school_comment.school_id = @school.id
     if @school.save
       redirect_to admins_school_path(@school), notice: "You have created school_comment successfully."
     else
       render "schools/show"
     end
  end

  private
  def school_comment_params
    params.require(:school_comment).permit(:position, :number, :rate, :review)
  end

end