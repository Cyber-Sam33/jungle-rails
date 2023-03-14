require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    # needs @category AND @product initialized within that category 
    before do
      @category = Category.new(:name => "test_category")
      @product = Product.new(:name => "product_name")
    end

    describe "name" do
      it "confirms the presence of name in Category" do
        expect(@category.name).to eq "test_category"
      end
    end

    describe "name" do
      it "confirms the presence of name in Product" do
        expect(@product.name).to eq "product_name"
      end
    end


  describe "Product" do
    it "is not valid without a title" do
      product = Product.new(name: nil)
      expect(product).to_not be_valid
    end
    it "is not valid without a price" do
      price = Product.new(price: nil)
      expect(price).to_not be_valid
    end
    it "is not valid without a quantity" do
      quantity = Product.new(quantity: nil)
      expect(quantity).to_not be_valid
    end
    it "is not valid without a category" do
      category = Product.new(category: nil)
      expect(category).to_not be_valid
    end
    it "is not valid without having every property filled" do
      valid_product = Product.new(category:@category , name:'test_name', price:5, quantity:1)
      expect(valid_product).to be_valid
    end
  end

end
end





# RSpec.describe Auction, :type => :model do
#   it "is valid with valid attributes" do
#     expect(Auction.new).to be_valid
#   end

#   it "is not valid without a title"
#   it "is not valid without a description"
#   it "is not valid without a start_date"
#   it "is not valid without a end_date"
# end



    # describe Product, :name => do
    #   it "Product is valid with valid attributes" do
    #     expect (Product.new).to be_valid
    #     # expect(@product.name).to eq "product_name"
    #   end
    # end



    

