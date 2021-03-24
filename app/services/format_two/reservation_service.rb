class FormatTwo::ReservationService

  def initialize(params)
    @params = params
    @guest = Guest.find_by_email(@params[:guest][:email])
  end

  def create
    begin
      reservation = Reservation.new(
                                      guest_id:            @guest.id,
                                      start_date:          @params[:start_date],
                                      end_date:            @params[:end_date],
                                      payout_amount:       @params[:expected_payout_amount],
                                      currency:            @params[:currency],
                                      nights:              @params[:nights],
                                      number_of_guests:    @params[:number_of_guests],
                                      status:              @params[:status],
                                      total_paid_amount:   @params[:total_paid_amount_accurate],
                                      adults:              @params[:adults],
                                      children:            @params[:children],
                                      infants:             @params[:infants],
                                      security_amount:     @params[:listing_security_price_accurate],
                                      total_amount:        @params[:total_paid_amount_accurate]
                                    )

      reservation.save!
    rescue => e
      return e
    end

    return reservation
  end

end