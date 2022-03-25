# frozen_string_literal: true

class EligibleAdminsController < ApplicationController
  before_action :set_eligible_admin, only: %i[show edit update destroy]
  before_action :authenticate_admin!

  # GET /eligible_admins or /eligible_admins.json
  def index
    @eligible_admins = EligibleAdmin.all
  end

  # GET /eligible_admins/1 or /eligible_admins/1.json
  def show; end

  # GET /eligible_admins/new
  def new
    @eligible_admin = EligibleAdmin.new
  end

  # GET /eligible_admins/1/edit
  def edit; end

  # POST /eligible_admins or /eligible_admins.json
  def create
    @eligible_admin = EligibleAdmin.new(eligible_admin_params)

    respond_to do |format|
      if @eligible_admin.email.include?('@tamu.edu')
        if @eligible_admin.save
          format.html { redirect_to(eligible_admin_url(@eligible_admin), notice: 'Eligible admin was successfully created.') }
          format.json { render(:show, status: :created, location: @eligible_admin) }
        else
          format.html { render(:new, status: :unprocessable_entity) }
          format.json { render(json: @eligible_admin.errors, status: :unprocessable_entity) }
        end
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @eligible_admin.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /eligible_admins/1 or /eligible_admins/1.json
  def update
    respond_to do |format|
      if @eligible_admin.email.include?('@tamu.edu')
        if @eligible_admin.update(eligible_admin_params)
          format.html { redirect_to(eligible_admin_url(@eligible_admin), notice: 'Eligible admin was successfully updated.') }
          format.json { render(:show, status: :ok, location: @eligible_admin) }
        else
          format.html { render(:edit, status: :unprocessable_entity) }
          format.json { render(json: @eligible_admin.errors, status: :unprocessable_entity) }
        end
      end
      format.html { render(:edit, status: :unprocessable_entity) }
      format.json { render(json: @eligible_admin.errors, status: :unprocessable_entity) }
    end
  end

  # DELETE /eligible_admins/1 or /eligible_admins/1.json
  def destroy
    @eligible_admin.destroy!

    respond_to do |format|
      format.html { redirect_to(eligible_admins_url, notice: 'Eligible admin was successfully destroyed.') }
      format.json { head(:no_content) }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_eligible_admin
    @eligible_admin = EligibleAdmin.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def eligible_admin_params
    params.require(:eligible_admin).permit(:email)
  end
end
