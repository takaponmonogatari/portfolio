class SearchController < ApplicationController
  def search
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]
    @prefectures = Prefecture.all
    if @model == "school.name"
      @schools = School.search_school(@content, @method)
    else
      @schools = School.search_club(@content, @method)
    end
    render 'schools/index'
  end
end
