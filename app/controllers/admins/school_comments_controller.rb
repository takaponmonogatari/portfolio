class Admins::SchoolCommentsController < ApplicationController
  def index
    @school_comments = SchoolComment.all
  end
  
  
end
