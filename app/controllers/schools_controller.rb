class SchoolsController < ApplicationController
  def create
    school = School.new params[:school]
    if school.save
      redirect_to admin_portal_url, :notice => "School was successfully created"
    else
      redirect_to admin_portal_url, :error => "You didn't all the required information!"
    end
  end
end