class Product < ActiveRecord::Base
  belongs_to :category
  
  def price=(price)
    self[:price] = price
  end
  
  def price
    begin
      p = (read_attribute(:price) * 100).round / 100
      "%.2f" % p
    rescue
      read_attribute(:price)
    end
  end
  
end
