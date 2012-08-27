class AppRolesController < ApplicationController
    before_filter :check_access

  # GET /app_roles
  # GET /app_roles.json
  def index
    @app_roles = AppRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_roles }
    end
  end

  # GET /app_roles/1
  # GET /app_roles/1.json
  def show
    @app_role = AppRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_role }
    end
  end

  # GET /app_roles/new
  # GET /app_roles/new.json
  def new
    @app_role = AppRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_role }
    end
  end

  # GET /app_roles/1/edit
  def edit
    @app_role = AppRole.find(params[:id])
  end

  # POST /app_roles
  # POST /app_roles.json
  def create
    @app_role = AppRole.new(params[:app_role])

    respond_to do |format|
      if @app_role.save
        format.html { redirect_to @app_role, notice: 'App role was successfully created.' }
        format.json { render json: @app_role, status: :created, location: @app_role }
      else
        format.html { render action: "new" }
        format.json { render json: @app_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_roles/1
  # PUT /app_roles/1.json
  def update
    @app_role = AppRole.find(params[:id])

    respond_to do |format|
      if @app_role.update_attributes(params[:app_role])
        format.html { redirect_to @app_role, notice: 'App role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_roles/1
  # DELETE /app_roles/1.json
  def destroy
    @app_role = AppRole.find(params[:id])
    @app_role.destroy

    respond_to do |format|
      format.html { redirect_to app_roles_url }
      format.json { head :no_content }
    end
  end
end
