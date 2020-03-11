class AddProducts < ActiveRecord::Migration[6.0]
  def change
    Product.create :title => 'Hawaiian', :description => 'This is hawaiian pizza.', :size => 30, :is_spicy => false, :is_veg => false, :is_offer => false, :path_to_image => '/images/hawaiian.jpg', :price => 5

    Product.create :title => 'Pepperoni', :description => 'Nice pepperoni pizza.', :size => 30, :is_spicy => false, :is_veg => false, :is_offer => false, :path_to_image => '/images/pepperoni.jpg', :price => 15

    Product.create :title => 'Veg', :description => 'Amazing vegetarian pizza.', :size => 30, :is_spicy => false, :is_veg => false, :is_offer => false, :path_to_image => '/images/veg.jpg', :price => 10
  end
end