class TodosController < ApplicationController
  def index
    @todos= session[:todos] ||= []

  end
  def create
    session[:todos].push params[:task]
    redirect_to '/todos'
  end

  def destroy
    session[:todos].clear
    redirect_to todos_path
  end

  def delete_one
    session[:todos].delete(params[:task])
    redirect_to todos_path
  end

end
