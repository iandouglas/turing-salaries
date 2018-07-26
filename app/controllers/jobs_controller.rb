class JobsController < ApplicationController
  def index
    @jobs = Job.order(created_at: :desc)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
