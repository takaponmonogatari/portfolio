class Admins::SchoolsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @prefectures = Prefecture.all
   if params[:prefecture_id]
     @prefecture = School.find(params[:prefecture_id])
     all_schools = @prefecture.schools
   else
     all_schools = School.includes(:prefecture)
   end
    @schools = all_schools
    @all_schools_count = all_schools.count

  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
     if @school.save
       redirect_to admins_school_path(@school), notice: "You have created school successfully."
     else
       render "new"
     end
  end

  def show
    @school = School.find(params[:id])
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      redirect_to admins_school_path(@school), notice: "You have updated school successfully."
    else
      render "edit"
    end
  end

  private
  def school_params
    params.require(:school).permit(:prefecture_id, :division_id, :name, :name_kana, :postal_code, :address, :url, :google, :yahoo, :image, :club)
  end
end
