class Quote < ApplicationRecord
  belongs_to :customer
  has_one :shipping_address, class_name: 'Address'
  has_one :billing_address, class_name: 'Address'
  
  has_many :quote_items, inverse_of: :quote
  accepts_nested_attributes_for :quote_items, reject_if: :all_blank, allow_destroy: true

  before_commit :set_total
  before_commit :set_new_stock

  def shipping_address; Address.find(shipping_address_id); end
  def billing_address; Address.find(billing_address_id); end

  def set_total
    if quote_items
      self.taxes = quote_items.map(&:tax).sum
      self.fees = 0
      self.total = quote_items.map(&:price).sum
      self.save
    end
  end

  def set_new_stock
    quote_items.each do |qi|
      if qi.item.stock > qi.quantity
        qi.item.stock -= qi.quantity
        qi.item.save
      end
    end
  end
end
