class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.create(params[:id])
        redirect_to employee_path(@employee)
    end

    def new
        @employee = Employee.new
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(
            first_name: params[:employee][:first_name], 
            last_name: params[:employee][:last_name],
            alias: params[:employee][:alias],
            title: params[:employee][:title],
            office: params[:employee][:office],
            dog_id: params[:employee][:dog_id]
            )
        redirect_to employee_path(@employee)
    end

    private

    # def strong_params
    #     @strong_params = params.require().permit()
    # end


end
