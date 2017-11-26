class EnquiriesController < ApplicationController
  def index
    @enquiries = Enquiry.order("created_at desc")
  end

  def new
    @enquiry = Enquiry.new
  end

  def edit
    @enquiry = Enquiry.find(params[:id])
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      flash[:notice] = "Enquiry Submitted Successfully"
      redirect_to enquiries_path
    else
      render :new
    end
  end

  def update
    @enquiry = Enquiry.find(params[:id])
    if @enquiry.update_attributes(enquiry_params)
      flash[:notice] = "Enquiry Updated Successfully"
      redirect_to enquiry_path(@enquiry)
    else
      render :edit
    end
  end

  def show
    @enquiry = Enquiry.find(params[:id])
  end
  
  def destroy
    @enquiry = Enquiry.find(params[:id])
    @enquiry.destroy
      flash[:notice] = "Enquiry was successfully destroyed"
      redirect_to enquiries_path
  end

  private
  def enquiry_params
    params.require(:enquiry).permit!
  end
end
