class SchoolsController < ApplicationController
  def index
    @prefectures = Prefecture.all
    if params[:prefecture_id]
      @prefecture = Prefecture.find(params[:prefecture_id])
      all_schools = @prefecture.schools
    else
      all_schools = School.includes(:prefecture)

    end
      @schools = all_schools
      @all_schools_count = all_schools.count

  end

  def show
     @school = School.find(params[:id])
     @school_comment = SchoolComment.new
  end

  def search_club
    @prefectures = Prefecture.all
    if params[:prefecture_id]
      @prefecture = Prefecture.find(params[:prefecture_id])
      all_schools = @prefecture.schools
    else
      all_schools = School.includes(:prefecture)

    end
      @schools = all_schools
      @all_schools_count = all_schools.count


  end

  def search_school
    @prefectures = Prefecture.all
    if params[:prefecture_id]
      @prefecture = Prefecture.find(params[:prefecture_id])
      all_schools = @prefecture.schools
    else
      all_schools = School.includes(:prefecture)

    end
      @schools = all_schools
      @all_schools_count = all_schools.count

  end

end
