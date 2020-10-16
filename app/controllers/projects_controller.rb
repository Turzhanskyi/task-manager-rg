# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    @projects = current_user.projects
  end

  def show
    project
  end

  def new
    project
  end

  def edit
    project
  end

  def create
    project.assign_attributes(project_params)

    respond_to do |format|
      if project.save
        format.html { redirect_to @project, notice: t('controller.projects_controller.create_notice') }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if project.update(project_params)
        format.html { redirect_to @project, notice: t('controller.projects_controller.update_notice') }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: t('controller.projects_controller.destroy_notice') }
      format.json { head :no_content }
    end
  end

  private

  def project
    @project ||= params[:id].present? ? current_user.projects.find(params[:id]) : current_user.projects.build
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
