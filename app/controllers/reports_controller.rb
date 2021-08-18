class ReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @reports = @user.reports.paginate(page: params[:page])
  end

  def show
  end
end
