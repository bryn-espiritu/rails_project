class MedicalAppointmentsController < ApplicationController

  def index
    @appointments = MedicalAppointment.all
  end

  def new
    @appointment = MedicalAppointment.new
  end

  def create
    @appointment = MedicalAppointment.new(params[:appointment].permit(:first_name, :last_name, :email, :cp_number, :service, :payment, :time, :date))
    if @appointment.save
      redirect_to medical_appointments_path
    else
      render :new, status: :unprocessable_entity
    end
  end
    def show
      @appointment = MedicalAppointment.find(params[:id])
    end

    def edit
      @appointment = MedicalAppointment.find(params[:id])
    end

    def update
      @appointment = MedicalAppointment.find(params[:id])
      if @appointment.update(params.require(:appointment).permit(:first_name, :last_name, :email, :cp_number, :service, :payment, :time, :date))
        redirect_to medical_appointments_path
      else
        render :edit, status: :unprocessable_entity
      end
    end
    def destroy
      @appointment = MedicalAppointment.find(params[:id])
      @appointment.destroy
      redirect_to medical_appointments_path
      end

end
