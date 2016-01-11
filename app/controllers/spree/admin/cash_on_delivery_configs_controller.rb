

module Spree
  module Admin
    class CashOnDeliveryConfigsController < Spree::Admin::BaseController

      def edit
        @charge = Spree::CashOnDelivery::Config.charge
        @state_charge = Spree::CashOnDelivery::Config.state_charge
        @country_charge = Spree::CashOnDelivery::Config.country_charge
      end

      def update
        Spree::CashOnDelivery::Config.charge = params[:cash_on_delivery_charge]
        Spree::CashOnDelivery::Config.state_charge = params[:cash_on_delivery_state_charge]
        Spree::CashOnDelivery::Config.country_charge = params[:cash_on_delivery_country_charge]
        flash[:success] = "Cash on delivery charge has been updated"
        redirect_to edit_admin_cash_on_delivery_configs_path
      end

    end
  end
end