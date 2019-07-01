class CouponsController < ApplicationController
  
  before_action :set_coupon, only:[:show, :update]

  def index
    @coupons = Coupon.all
  end

  def show
    set_coupon
  end

  def edit
    set_coupon
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.create(coupon_params(:coupon_code, :store))
    redirect_to @coupon
  end

  def update
    set_coupon 
    @coupon.update(coupon_params(:coupon_code, :store))
  end

end

private

def set_coupon
  @coupon = Coupon.find(params[:id])
end

def coupon_params(*args)
  params.require(:coupon).permit(*args)
end
