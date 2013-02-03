class ProjectsController < ApplicationController
	def index
		@project = Project.new
		@projects = Project.all
	end

	def show
	end

	def edit
		@project = Project.new
		@projects = Project.find(params[:id])
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params[:project])
		@project.save
		redirect_to projects_path
	end

	def update
		@projects = Project.find(params[:id])
		@projects.update_attributes(params[:project])

		@project = Project.find(params[:id])
		if @project.project_status.nil?
			@project.update_attribute(:project_status, 1)
		elsif @project.project_status == 1
			@project.update_attribute(:project_status, 0)
		elsif @project.project_status == 0
			@project.update_attribute(:project_status, 1)
		end
		redirect_to projects_path
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	def update_status_complete
		
		redirect_to projects_path
	end
end