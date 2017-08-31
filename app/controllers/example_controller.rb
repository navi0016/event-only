class ExampleController < ApplicationController
  def form
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new

    @job_application.full_name = params [:job_application][:full_name]
    @job_application.phone = params[:job_application][:phone]
    @job_application.hobby = parmas[:job_application][:hobby]
    @job_application.years_experience =
    params[:job_application][:years_experience]
    @job_application.available_date = params[:job_application][:available_date]

    if @job_applications.Save
      redirect_to 'home/index'
    else
      render :new
    end
  end
end
