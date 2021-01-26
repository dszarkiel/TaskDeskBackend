class TasksController < ApplicationController

        def index 
            tasks = Task.all
            render json: tasks, except: [:created_at, :updated_at]
        end
    
        def show
            task = Task.find_by_id(params[:id])
            render json: task
        end
    
        def create
            task = Task.new(task_params)
            if task.save
                render json: task, except: [:created_at, :updated_at]
            else
                render json: {error: "Oops, something went wrong."}
            end
        end
    
        def update
            task = Task.find_by_id(params[:id])
            if task.update(task_params)
                render json: task
            else
                render json: {error: "Oops, something went wrong."}
            end
        end
    
        def destroy
            task = Task.find_by_id(params[:id])
            if task.destroy
                render json: task
            else
                render json: {error: "Oops, something went wrong."}
            end
        end

        private 

        def task_params
            params.require(:task).permit(:title, :body, :complete, :created_at, :updated_at)
        end
end
