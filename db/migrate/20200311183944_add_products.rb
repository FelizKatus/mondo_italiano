class AddProducts < ActiveRecord::Migration[6.0]
  def change
    Product.create :title => 'Hawaiian', :description => 'This is small hawaiian pizza.', :size => 30, :is_spicy => false, :is_veg => false, :is_offer => false, :path_to_image => '/images/hawaiian.jpg', :price => 5
    Product.create :title => 'Hawaiian', :description => 'This is middle hawaiian pizza.', :size => 45, :is_spicy => false, :is_veg => false, :is_offer => false, :path_to_image => '/images/hawaiian.jpg', :price => 8
    Product.create :title => 'Hawaiian', :description => 'This is big hawaiian pizza.', :size => 50, :is_spicy => false, :is_veg => false, :is_offer => false, :path_to_image => '/images/hawaiian.jpg', :price => 10

    Product.create :title => 'Pepperoni', :description => 'Nice small pepperoni pizza.', :size => 30, :is_spicy => true, :is_veg => false, :is_offer => true, :path_to_image => '/images/pepperoni.jpg', :price => 15
    Product.create :title => 'Pepperoni', :description => 'Nice middle pepperoni pizza.', :size => 45, :is_spicy => true, :is_veg => false, :is_offer => true, :path_to_image => '/images/pepperoni.jpg', :price => 18
    Product.create :title => 'Pepperoni', :description => 'Nice big pepperoni pizza.', :size => 50, :is_spicy => true, :is_veg => false, :is_offer => true, :path_to_image => '/images/pepperoni.jpg', :price => 20

    Product.create :title => 'Veg', :description => 'Amazing small vegetarian pizza.', :size => 30, :is_spicy => false, :is_veg => true, :is_offer => false, :path_to_image => '/images/veg.jpg', :price => 10
    Product.create :title => 'Veg', :description => 'Amazing middle vegetarian pizza.', :size => 45, :is_spicy => false, :is_veg => true, :is_offer => false, :path_to_image => '/images/veg.jpg', :price => 12
    Product.create :title => 'Veg', :description => 'Amazing big vegetarian pizza.', :size => 50, :is_spicy => false, :is_veg => true, :is_offer => false, :path_to_image => '/images/veg.jpg', :price => 15
  end
end