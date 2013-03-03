class RequestedfeedbacksController < ApplicationController
  def index
  	@requestedfeedbacks = Requestedfeedback.all
  end

  def show
  	@requestedfeedback = Requestedfeedback.find(params[:id])
  end

  def edit
  	@requestedfeedback = Requestedfeedback.find(params[:id])
  end

  def new
  	@requestedfeedback = Requestedfeedback.new
  end

  def create
	@requestedfeedback = Requestedfeedback.new(params[:requestedfeedback])
	#@requestedfrom = @requestedfeedback.from_user
	if @requestedfeedback.save
		UserMailer.request_email(@requestedfeedback).deliver
		redirect_to @requestedfeedback
	else
		render :edit
	end
  end

  def update
	@requestedfeedback = Requestedfeedback.find(params[:id])
	if @requestedfeedback.update_attributes(params[:requestedfeedback])
		redirect_to @requestedfeedback
	else
		render :edit
	end
  end

  def destroy
	@requestedfeedback = Requestedfeedback.find(params[:id])
	@requestedfeedback_id = @requestedfeedback.id
	if @requestedfeedback.destroy
		#respond_with(@requestedfeedback_id, :location => requestedfeedbacks_path)
		redirect_to @requestedfeedback
	else
		flash[:error] = "Error deleting feedback"
		redirect_to @requestedfeedback
	end

  end




end
