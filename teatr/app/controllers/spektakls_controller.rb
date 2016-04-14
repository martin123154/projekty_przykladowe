class SpektaklsController < ApplicationController
  #before_action :authenticate_user!
  #before_action :authenticate_user!, :except => [:index, :new,:show, :edit, :update, :destroy]
 before_action :set_spektakl, only: [:show, :edit, :update, :destroy]
 before_filter :authenticate_user!, :except => [ :index, :show]

  # GET /spektakls
  # GET /spektakls.json
  def index
   @spektakls = Spektakl.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /spektakls/1
  # GET /spektakls/1.json
  def show
  end

  # GET /spektakls/new
  def new
    @spektakl = Spektakl.new
  end

  # GET /spektakls/1/edit
  def edit
  end

  # POST /spektakls
  # POST /spektakls.json
  def create
    @spektakl = Spektakl.new(spektakl_params)

    respond_to do |format|
      if @spektakl.save
        format.html { redirect_to @spektakl, notice: 'Spektakl został utworzony' }
        format.json { render :show, status: :created, location: @spektakl }
      else
        format.html { render :new }
        format.json { render json: @spektakl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spektakls/1
  # PATCH/PUT /spektakls/1.json
  def update
    respond_to do |format|
      if @spektakl.update(spektakl_params)
        format.html { redirect_to @spektakl, notice: 'Spektakl został zaktualizowany' }
        format.json { render :show, status: :ok, location: @spektakl }
      else
        format.html { render :edit }
        format.json { render json: @spektakl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spektakls/1
  # DELETE /spektakls/1.json
  def destroy
    @spektakl.destroy
    respond_to do |format|
      format.html { redirect_to spektakls_url, notice: 'Spektakl został usunięty' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spektakl
      @spektakl = Spektakl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spektakl_params
      params.require(:spektakl).permit(:tytul, :rezyser, :premiera)
    end
end
