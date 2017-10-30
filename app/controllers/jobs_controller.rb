class JobsController < ApplicationController
  def index
  @jobs = Job.page(params[:page]).per(25)
  end

  def new
    @job = Job.new
  end

  def create

    @job = Job.new(params.require(:job).permit(:title, :company_id, :url, :location, :job_type))
    if @job.save
      redirect_to jobs_path
    else
      render "new"
    end
  end

end
