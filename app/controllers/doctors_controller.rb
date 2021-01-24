class DoctorsController < ApplicationController
  def index
  	@model = Doctor.all
  end

  def show
  end

  def edit
  end

  def new
  	@model = Doctor.new
  end

  def create
  	@model = Doctor.new(doctor_params)
  	if @model.save 
  		redirect_to new_doctor_patient_path(@model)
  	end
  end


  private 

  def doctor_params
  	params.require(:doctors).permit([:first_name, :last_name, :focus])
  end
end
