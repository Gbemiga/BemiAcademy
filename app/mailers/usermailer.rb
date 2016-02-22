class Usermailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.welcome.subject
  #
  def welcome(student)
   	@student = student #making the student object available to the student view
   	mail(:to => student.email, :subject => "Welcome to the blog site")
  end
end
