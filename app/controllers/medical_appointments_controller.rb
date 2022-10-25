class MedicalAppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = MedicalAppointment.includes(:payments).all
    @appointments = MedicalAppointment.includes(:services).all
  end

  def new
    @appointment = MedicalAppointment.new
  end

  def create
    @appointment = MedicalAppointment.new(appointment_params)
    if @appointment.save
      redirect_to medical_appointments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  def edit

  end

  def update
    @appointment = MedicalAppointment.find(appointment_params)
    if @appointment.update(appointment_params)
      redirect_to medical_appointments_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
    redirect_to medical_appointments_path
  end

  private

  def set_appointment
    @appointment = MedicalAppointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:first_name, :last_name, :email, :cp_number,:date, :time, :method, service_ids: [], payment_ids: [])
  end

end
