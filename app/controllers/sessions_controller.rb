class SessionsController < ApplicationController
  def new
  end

  def create
  	student = Student.find_by_email(params[:email])
  	if student && student.authenticate(params[:password])
  		session[:student_id] = student.id				#stores the id in the session
  		redirect_to student						      #displays the student/show view
  	else
  		flash.now[:error] = "Invalid email/password combination."
  		render 'new'
  	end
  end

  def destroy
    if logged_in?
      session[:student_id] = nil
    else
      flash[:notice] = "You need to log in first"
    end
    redirect_to login_path
  end
end
