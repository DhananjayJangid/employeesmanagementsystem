# app/controllers/products_controller.rb

class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    @Departments = Department.all
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
    @Department = Department.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @Department = Department.new(department_params)

    if @department.save
      redirect_to departments_path, notice: 'department was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /products/1
  def update
    if @department.update(department_params)
      redirect_to departments_path, notice: 'Department was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /products/1
  def destroy
    @department.destroy
    redirect_to departments_path, notice: 'Department was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def department_params
      params.require(:department).permit(:d_name)
    end
end
