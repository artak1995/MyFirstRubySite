class WelcomeController < ApplicationController
  def say
  end

  def index

  end

  def show
  end

  # GET /welcome/new
  def new
    @field = Field.new
  end

  # GET /welcome/edit
  def edit
  end

  # Get /welcome/create
  def create
    @field = Field.new(field_params)
    if @field.save
      redirect_to(:action => "test")
    end
  end

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


