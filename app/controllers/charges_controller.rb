class ChargesController < ApplicationController
    #  & check all data from Sripe

    # C'est create qu'il faut copier dans le controller qui va passer la commande
    def create
        # Amount in cents
        @amount = 500
    
        # get customer from POST params
        customer = Stripe::Customer.create(
          email: params[:stripeEmail],
          source: params[:stripeToken]
        )
    
        begin
          charge = Stripe::Charge.create(
            customer: customer.id,
            amount: @amount,
            description: "Paiement de #{@user.name}",
            currency: 'eur'
          )
          current_user.increment_premium!
        rescue Stripe::CardError => e
          flash[:error] = e.message
          redirect_to new_charge_path
        end
    end
    end
    