class FieldsController < ApplicationController
  # before_action :set_todo, only: [:show, :edit, :update, :destroy]


  def show
  end

  # GET /fields/new
  def new
    @field = Field.new
  end

  # GET /fields/1/edit
  def edit
  end


  def create
    @field = Field.new(field_params)
    if @field.save
      redirect_to(:action => "test")
    end
  end

  PATCH/PUT /fields/1
  PATCH/PUT /fields/1.json
  def update
    respond_to do |format|
      if @field.update(field_params)
        format.html { redirect_to @field, notice: 'field was successfully updated.' }
        format.json { render :show, status: :ok, location: @field }
      else
        format.html { render :edit }
        format.json { render json: @field.errors, status: :unprocessable_entity }
      end
    end
  end
  #

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_field
    @field = Field.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def field_params
    params.require(:field).permit(:name, :email, :phone, :msg)
  end
end
