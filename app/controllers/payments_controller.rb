class PaymentsController < ApplicationController

  before_action :set_payments, only: [:edit, :update, :destroy]

  def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    if @payment.save
      redirect_to payments_path
    else
      render :new
    end
  end

  def edit ;end

  def update
    if @payment.update(payment_params)
      redirect_to payments_path
    else
      render :edit
    end
  end

  def destroy
    @payment.destroy
    redirect_to payments_path
  end

  private

  def set_payments
    @payment = Payment.find(params[:id])
  end

  def payment_params
    params.require(:payment).permit(:method)
  end
end

