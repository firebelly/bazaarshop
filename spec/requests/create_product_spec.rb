require 'spec_helper'

describe 'Creating Products' do
  
  it 'should be able to create a Product' do
    Product.count.should == 0
    
    visit root_path
    save_and_open_page
    click_link 'Products'
    click_link 'Add a new Product'
    
    fill_in_fields :product,
      :name => 'Custom Dress',
      :price => '99.99',
      :category => 'women'
    click_button 'Add Product'
    
    Product.count.should == 1
    Product.first.name.should == 'Custom Dress'
    
  end
end
    