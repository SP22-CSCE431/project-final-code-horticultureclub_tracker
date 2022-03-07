class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def show
  end

  def edit
  end

  def new
    @admin = Admin.new
  end
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to(member_url(@member), notice: 'Admin was successfully created.') }
        format.json { render(:show, status: :created, location: @member) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @member.errors, status: :unprocessable_entity) }
      end
    end
  end
end
