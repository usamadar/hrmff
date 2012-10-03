class EmployeesController < ApplicationController
  # GET /employees
  # GET /employees.json
  def index
    if !admin?
      @search = Employee.where("airline_id = ?", current_user.airline_id).order("first_name, last_name").search(params[:search])
    else
      @search = Employee.order("airline_id, first_name, last_name").search(params[:search])
    end

    @employees = @search.paginate(page: params[:page], :per_page => 30)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @employee = Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/new
  # GET /employees/new.json
  def new
    @employee = Employee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render json: @employee, status: :created, location: @employee }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1
  # PUT /employees/1.json
  def update
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
    end
  end
  # disable an employee
  def disable
    @employee = Employee.find(params[:id])
    @employee.update_attribute(:enabled, false)
    @employee.employees.each do |e|
      e.update_attribute(:enabled, false)
    end
    redirect_to employees_path
  end
  
  # enable an employee
  def enable
    @employee = Employee.find(params[:id])
    if (@employee.employee && @employee.employee.enabled == false)
      redirect_to employees_path , notice: 'Can\'t enable a relative if the employee is disabled'
    else
      @employee.update_attribute(:enabled, true)
      @employee.employees.each do |e|
        e.update_attribute(:enabled, true)
      end
        redirect_to employees_path
    end

  end


  def show_for_company
    @employees = Employee.where("airline_id = ?" , params[:id])
    render :partial => "employee", :locals => { :filtered_employees => @employees }
  end
end
