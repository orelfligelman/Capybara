class TasksController < ApplicationController
	def new
		@task = Task.new
		@tasks = Task.all
	end

	def create
		@task = Task.new(params[:task].permit(:name))
		if @task.save
			redirect_to new_task_path
		end
	end
end