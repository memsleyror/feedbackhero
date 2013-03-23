class ClientfeedbacksController < ApplicationController
  def index
  	@clientfeedbacks = Clientfeedback.all
  end

  def show
  	@clientfeedback = Clientfeedback.find(params[:id])
  end

  def edit
  	@clientfeedback = Clientfeedback.find(params[:id])
  end

  def new
  	@clientfeedback = Clientfeedback.new
  end

  def create
	@clientfeedback = Clientfeedback.new(params[:requestedfeedback])
	#@requestedfrom = @requestedfeedback.from_user
	if @clientfeedback.save
		UserMailer.request_email(@clientfeedback).deliver
		redirect_to @clientfeedback
	else
		render :edit
	end
  end

  def update
	@clientfeedback = Clientfeedback.find(params[:id])
	if @clientfeedback.update_attributes(params[:clientfeedback])
		redirect_to @clientfeedback
	else
		render :edit
	end
  end

  def destroy
	@clientfeedback = Clientfeedback.find(params[:id])
	@clientfeedback_id = @clientfeedback.id
	if @clientfeedback.destroy
		#respond_with(@requestedfeedback_id, :location => requestedfeedbacks_path)
		redirect_to @clientfeedback
	else
		flash[:error] = "Error deleting feedback"
		redirect_to @clientfeedback
	end

  end



end
