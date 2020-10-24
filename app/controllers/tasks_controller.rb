# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :project
  before_action :task, only: %i[show new edit update destroy]
  delegate :tasks, to: :project

  def index
    @tasks = project.tasks
  end

  def show; end

  def new; end

  def edit; end

  def create
    if task.save
      redirect_to @task.project, notice: t('controller.tasks_controller.create_notice')
    else
      flash.now[:alert] = t('controller.tasks_controller.create_alert')
      render action: :new
    end
  end

  def update
    if task.update(task_params)
      redirect_to task.project, notice: t('controller.tasks_controller.update_notice')
    else
      flash.now[:alert] = t('controller.tasks_controller.update_alert')
      render action: :edit
    end
  end

  def destroy
    task.destroy

    redirect_to @project, notice: t('controller.tasks_controller.destroy_notice')
  end

  private

  def project
    @project ||= current_user.projects.find(params[:project_id])
  end

  def task
    @task ||= params[:id].present? ? project.tasks.find(params[:id]) : project.tasks.new(task_params)
  end

  def task_params
    params.require(:task).permit(:name, :description, :status, :deadline, :project_id, :task_image)
  end
end
