class MedsController < ProtectedController
  before_action :set_med, only: [:show, :update, :destroy]

  # GET /meds
  # GET /meds.json
  def index
    @meds = Med.where(:user_id => current_user.id)

    render json: @meds
  end

  # GET /meds/1
  # GET /meds/1.json
  def show
    render json: @med
  end

  # POST /meds
  # POST /meds.json
  def create
    @med = current_user.meds.build(med_params)

    if @med.save
      render json: @med, status: :created, location: @med
    else
      render json: @med.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meds/1
  # PATCH/PUT /meds/1.json
  def update
    if @med.update(med_params)
      head :no_content
    else
      render json: @med.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meds/1
  # DELETE /meds/1.json
  def destroy
    @med.destroy

    head :no_content
  end

  private

  def set_med
    @med = current_user.meds.find(params[:id])
  end

  def med_params
    params.require(:med).permit(:nickname, :clinical_name, :count, :user_id)
  end

  private :set_med, :med_params
end
