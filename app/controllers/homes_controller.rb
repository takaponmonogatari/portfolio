class HomesController < ApplicationController
  def top
    @prefectures = Prefecture.all
  end

  def about
  end

  def comment
  　@school_comments = SchoolComment.all
  end
end
