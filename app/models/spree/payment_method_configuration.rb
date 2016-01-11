class Spree::PaymentMethodConfiguration <  Spree::Preferences::Configuration
  preference :charge, :string, :default => '10.0'
  preference :state_charge, :string, :default => '25.0'
  preference :country_charge, :string, :default => '25.0'
end