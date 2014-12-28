class TodoController < ApplicationController

  def index
    @todos = Todo.where(done: false)
    @todoDone = Todo.where(done: true)
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params['todo'])
    if  params['todo']['title'].present?
      if @todo.save
        redirect_to todo_index_path, :notice => 'Todo item was created'
      else
        render "new"
      end
    else
      redirect_to new_todo_path, :notice => 'Item cant be create without title, Please add title'
    end
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update_attribute(:done, true)
      redirect_to todo_index_path , :notice => 'Todo item was marked as done'
    else
      redirect_to todo_index_path , :notice => 'Unable to marked'
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todo_index_path , :notice => 'Todo item was deleted'
  end
end
