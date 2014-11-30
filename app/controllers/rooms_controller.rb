class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  
  def index
    @rooms = Room.order("hotelname").all
  end
  
  def show
  end
  
  def new
    @hotel = Hotel.find_by_id(params[:hotel_id])
    @room = @hotel.rooms.build
    @room = Room.new
  end
  
  def edit
    
  end

  def create
    
    @room = Room.create(room_params)
    @room.hotel = @current_hotel
        
    if @room.save
      flash[:notice] = "Room was successfully saved"
      redirect_to hotels_path
    else
      flash[:notice] = "There was an error"
    end
  end
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def room_params
    params.require(:room).permit(:roomnumber, :roomtype, :roomdescription, :roomprice, :hotelname, :hotel_id)
  end  

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_room
    @room = Room.find(params[:id])
  end
end
