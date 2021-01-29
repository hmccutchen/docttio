class AppointmentsController < ApplicationController
  def new
  	# load_doctor

  	@model = Appointment.new
  end

  def create 
  	# load_doctor

  	@model = Appointment.new(appointment_params)
  	if @model.save! 
  		redirect_to appointments_path
  	end
  end

  def edit
   load_model
  end

  def update
  	load_model 
  	@model.update(appointment_params)
  	if @model.save
  		redirect_to appointments_path
  	end
  end

  def show
  end

  def destroy
  	load_model
  	@model.destroy
  	if @model.destroy
  	 redirect_to appointments_path 
  	 end
  end

  def index
  	@model = Appointment.all
  end


  private

  def appointment_params
  	params.require(:appointment).permit(:start_time, :end_time, :date, :patient_id, :doctor_id)
  end

  # def load_doctor
  # 	@doctor = Doctor.find(params[:doctor_id])
  # end
  def load_model
  	@model = Appointment.find(params[:id])
  end

  def load_patient
  end
end
