module Spree
  module Stock
    Quantifier.class_eval do
      durably_decorate :can_supply? , mode: 'soft' , sha: get_durably_sha( 'Spree::Stock::Quantifier#can_supply?' ) do
        original_can_supply?(required) || Spree::Variant.find(@variant).product.is_gift_card?
      end
    end
  end
end
