# frozen_string_literal: true

class PositionsController < ApplicationController
  before_action :set_position, only: %i[show edit update destroy]
  before_action :authenticate_admin!

  # GET /positions or /positions.json
  def index
    @members = Member.all
    @positions = Position.all
  end

  # GET /positions/1 or /positions/1.json
  def show
    @members = Member.all
  end

  # GET /positions/new
  def new
    @members = Member.all
    @position = Position.new
  end

  # GET /positions/1/edit
  def edit
    @members = Member.all
  end

  # POST /positions or /positions.json
  def create
    @position = Position.new(position_params)

    respond_to do |format|
      if @position.save
        format.html { redirect_to(position_url(@position), notice: 'Position was successfully created.') }
        format.json { render(:show, status: :created, location: @position) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @position.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /positions/1 or /positions/1.json
  def update
    respond_to do |format|
      if @position.update(position_params)
        format.html { redirect_to(position_url(@position), notice: 'Position was successfully updated.') }
        format.json { render(:show, status: :ok, location: @position) }
      else
        format.html { render(:edit, status: :unprocessable_entity) }
        format.json { render(json: @position.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /positions/1 or /positions/1.json
  def destroy
    @position.destroy!

    respond_to do |format|
      format.html { redirect_to(positions_url, notice: 'Position was successfully destroyed.') }
      format.json { head(:no_content) }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_position
    @position = Position.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def position_params
    params.require(:position).permit(:member_id, :position_name)
  end
end
