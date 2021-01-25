class PatientsController < ApplicationController
  def index
  end

  def edit
  end

  def new
  	load_doctor

  	@model = Patient.new
  end

  def create
  	load_doctor

  	@model = @doctor.patients.build(patient_params)

  end

  def show
  end

  private

  def patient_params
  	params.require(:patient).permit(:first_name, :last_name, :doctor_id)
  end

  def load_doctor
  	@doctor = Doctor.find(params[:doctor_id])
  end
end
