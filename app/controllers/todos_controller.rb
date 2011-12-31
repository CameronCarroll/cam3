class TodosController < ApplicationController
  
  http_basic_authenticate_with :name => "cameron", :password => "star!craft3"

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      redirect_to @todo, notice => "Record created successfully."
    else
      render :action => "new"
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes(params[:todo])
      redirect_to @todo, notice => "Record updated successfully."
    else
      render :action => "edit"
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_url
  end
end
