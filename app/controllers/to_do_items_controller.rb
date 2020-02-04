class ToDoItemsController < ApplicationController
  before_action :set_to_do_item, only: [:show, :update, :destroy]

  # GET /to_do_items
  def index
    @to_do_items = ToDoItem.all

    render json: @to_do_items
  end

  # GET /to_do_items/1
  def show
    render json: @to_do_item
  end

  # POST /to_do_items
  def create
    @to_do_item = ToDoItem.new(to_do_item_params)

    if @to_do_item.save
      render json: @to_do_item, status: :created, location: @to_do_item
    else
      render json: @to_do_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /to_do_items/1
  def update
    if @to_do_item.update(to_do_item_params)
      render json: @to_do_item
    else
      render json: @to_do_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /to_do_items/1
  def destroy
    @to_do_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_do_item
      @to_do_item = ToDoItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def to_do_item_params
      params.require(:to_do_item).permit(:name, :completed, :toDoList)
    end
end
