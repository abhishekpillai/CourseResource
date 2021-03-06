require 'open-uri'
require 'nokogiri'

class CoursesController < ApplicationController
  
  def search
    if params[:course].present?
      @search = params[:course]
      @results = Course.where("dept LIKE ?", "%#{params[:course]}%")
    else
      # implement showing courses based on school and other filters
      
      @results = Course.all
    end
    render "pages/coursesearch"
  end
  
  def pin
    course = Course.find_by_id(params[:pin])
    my_course = current_user.my_courses.build(:course => course)
    # my_course = UserCourse.new
    
    # my_course.user = User.find(session[:user_id])
    # my_course.course = course
    my_course.save
    redirect_to user_home_url
  end

  def populate_db
    
    # NOTE: i used the following code to populate my database with 11 sample courses from northwestern's website
    # NOTE: Just learned about Seed files today (2/27/2012)
    #
    # @dept = []
    # @course_title = []
    # @course_no = []
    # @course_descriptions = []
    doc = Nokogiri::HTML(open("http://www.eecs.northwestern.edu/academics/course-descriptions.html"))
       doc.xpath('//h2[@class = "contentheading"]/a[@class = "contentpagetitle"]').each do |node|
    #      @dept << node.text.split("-")[0].split(" ")[0]
    #      @course_no << node.text.split("-")[0].split(" ")[1]
    #   @course_title << node.text.split("-")[1]
    end
    # doc.xpath('//div[@class = "article-content"]').each do |node|
    #      @course_descriptions << node.text
    # end
    # 
    # x = 3
    # while x < 14
    #   Course.create :dept => @dept[x], :course_no => @course_no[x], :title => @course_title[x], :short_description => @course_descriptions[x], :school_id => 1
    #   x += 1
    # end
    render '/pages/home'
  end
end