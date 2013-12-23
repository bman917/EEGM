class PurchaseOrder < ActiveRecord::Base
  belongs_to :supplier

  def supplier_name
  	supplier.try :name
  end

  def supplier_name=(name)
  	self.supplier = Supplier.find_or_create_by_name(name) if name.present?
  end

  def date
  	created_at.to_s(:time)
  end

end
