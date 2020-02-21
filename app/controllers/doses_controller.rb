class DosesController < ApplicationController

  def new
    @dose = Dose.new(params[:name])
  end

  def create
    @dose = Dose.new(params[:name])
    if @dose.save
      "Successfully saved!"
    else
      render "new_dose"
    end
  end

  def destroy
    @dose = Dose.find(params[:name])
    @dose.delete
  end

  private

  def dose_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:dose).permit(:description)
  end
end
