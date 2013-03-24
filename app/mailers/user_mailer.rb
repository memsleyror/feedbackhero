class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
  	@user = user
  	@url = "http://example.com/Login"
  	mail(:to => user.email, :subject => "Welcome")
  end	

  def request_email(requestedfeedback)
  	@sender = requestedfeedback.sender
  	@request_body = requestedfeedback.request_body
  	@url = "http://localhost:3000/requestedfeedbacks/" + requestedfeedback.id.to_s + "/edit"
  	mail(:to => requestedfeedback.sender.email, :subject => "Please give me some feedback")
  end	

  def clientrequest_email(clientfeedback)
    @first_name = clientfeedback.clientfirst_name
    @clientrequest_body = clientfeedback.request_body
    @url = "http://localhost:3000/clientfeedbacks/" + clientfeedback.id.to_s + "/edit"
    mail(:to => clientfeedback.client_email, :subject => "Please give me some feedback")
  end 

end
