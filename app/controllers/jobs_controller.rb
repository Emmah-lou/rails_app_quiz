class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @jobs = Job.all
    render 'jobs/index'
  end
  def show
    @job = Job.find(params[:id])
    render 'jobs/show'
  end
  def create
    @job = Job.new(job_params)
  
    if @job.save
      render 'jobs/create'
    else
      render json: @job.errors
    end
  end
  def destroy
    @job = Job.find(params[:id])
    if @job == nil
      render json: { error: "Job not found" }, status: :not_found
    else
      @job.destroy
      render json: { message: "Job deleted" }
    end
  end

  
  private
  
  def job_params
    params.permit(
      :url,
      :employer_name,
      :employer_description,
      :job_title,
      :job_description,
      :years_of_experience,
      :education_requirement,
      :industry,
      :base_salary,
      :employment_type_id,
      :created_at,
      :updated_at
    )
  end

end
