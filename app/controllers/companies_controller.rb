class CompaniesController < ApplicationController

  before_action :authenticate_user!

  def index
  @companies = Company.page(params[:page]).per(25)
  end

  def new
  Rails.logger.debug "AA::"
  @company = Company.new
  Rails.logger.debug "BB::"
  end
  def show
  end
  def create
    @company = Company.new(params.require(:company).permit(:name, :company_type))
    if @company.save
      redirect_to root_path
    else
      render "new"
    end
  end
end
