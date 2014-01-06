class PurchaseOrder < ActiveRecord::Base
  belongs_to :supplier
  has_many :item_orders

  def supplier_name
  	supplier.try :name
  end

  def supplier_name=(name)
  	self.supplier = Supplier.find_or_create_by_name(name) if name.present?
  end

  def add_phone(phone)
    supplier.phones << phone
  end

  def date
  	created_at.to_s(:time)
  end

end
