class PagesController < ApplicationController

  def home
  end

  def about
  end

  def admin
    @school = School.new
  end
  
  def user_home
  end
  
end
