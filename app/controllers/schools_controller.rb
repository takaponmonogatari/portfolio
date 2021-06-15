class SchoolsController < ApplicationController
  def index
    @prefectures = Prefecture.all
    if params[:prefecture_id]
      @prefecture = @prefectures.find(params[:prefecture_id])
      all_schools = @prefecture.schools
      @schools = all_schools
    else
    @schools = School.all
    end

  end

  def show
     @school = School.find(params[:id])
     @school_comment = SchoolComment.new
  end
end
