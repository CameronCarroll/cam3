class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      redirect_to @todo, :notice => "Successfully created item."
    else
      render :action => 'new'
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes(params[:todo])
      redirect_to @todo, :notice  => "Successfully updated item."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_url, :notice => "Successfully destroyed item."
  end
end
