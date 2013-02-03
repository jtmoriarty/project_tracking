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
		redirect_to projects_path
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end
end