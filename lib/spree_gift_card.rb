require 'durable_decorator'
require 'spree_api'
require 'spree_backend'
require 'spree_core'
require 'spree_frontend'
require 'spree_gift_card/engine'

# Create public method to get durably_sha
public
  
  def get_durably_sha( method )
    DurableDecorator::Base.determine_sha method
  end