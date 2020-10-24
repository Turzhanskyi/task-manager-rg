# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :project, only: %i[show edit update destroy]
  delegate :projects, to: :current_user

  PER_PAGE = 3

  def index
    @search = projects.order(id: :desc).ransack(search)
    @projects = @search.result.includes(:user, @tasks).paginate(page)
  end

  def show
    @task = project.tasks.build
  end

  def new
    @project = projects.build
  end

  def edit; end

  def create
    if project.save
      redirect_to project, notice: t('controller.projects_controller.create_notice')
    else
      flash.now[:alert] = t('controller.projects_controller.create_alert')
      render :new
    end
  end

  def update
    if project.update(project_params)
      redirect_to project, notice: t('controller.projects_controller.update_notice')
    else
      flash.now[:alert] = t('controller.projects_controller.update_alert')
      render :edit
    end
  end

  def destroy
    project.destroy
    redirect_to projects_url, notice: t('controller.projects_controller.destroy_notice')
  end

  private

  def project
    @project ||= params[:id].present? ? projects.find(params[:id]) : projects.new(project_params)
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end

  def page
    { page: params[:page], per_page: PER_PAGE }
  end

  def search
    params[:search]
  end
end
