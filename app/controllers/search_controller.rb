class SearchController < ApplicationController
  def search
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]
    @prefectures = Prefecture.all
    if @model == "school.name"
      @schools = School.search_school(@content, @method)
      render "schools/search_school"
    else
      @schools = School.search_club(@content, @method)
      render 'schools/search_club'
    end
  end
end
