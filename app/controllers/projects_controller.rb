# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]

  PER_PAGE = 3

  def index
    @search = current_user.projects.order(id: :desc).ransack(search)
    @projects = @search.result.includes(:user, @tasks).paginate(page)
  end

  def show
    @task = @project.tasks.build
  end

  def new
    @project = current_user.projects.build
  end

  def edit; end

  def create
    @project = current_user.projects.build(project_params)

    if @project.save
      redirect_to @project, notice: t('controller.projects_controller.create_notice')
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: t('controller.projects_controller.update_notice')
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url, notice: t('controller.projects_controller.destroy_notice')
  end

  private

  def set_project
    @project = current_user.projects.find(params[:id])
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
