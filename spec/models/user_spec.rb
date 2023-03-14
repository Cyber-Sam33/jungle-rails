require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    
    # before do
    #         @user = User.new(name:"test_user", email:'test_user@test.com', password:'123')
    #         example_password_confirmation = '123'
    # end

  describe "password" do
    it "is not valid if the password does not match" do
      @user = User.new(name:"test_user", email:'test_user@test.com', password:'123')
    @user.password_confirmation = '1234'
    expect(@user).to_not be_valid
    expect(@user.errors[:password_confirmation]).to include("doesn't match Password")
    # puts @user.errors[:password_confirmation]
    end
 
    it "if not valid when the email is uppercase " do
      @user = User.create(name:"test_user", email:'test_user@test.com', password:'123', password_confirmation:'123')
      @user2 = User.create(email:'TEST_USER@TEST.COM')
      # puts User.find_by_email('1111@test.com')

      expect(@user2).not_to be_valid 
    # puts @user.errors[:password_confirmation]
    end

    it "if no name entered should not be valid " do
      @user = User.create(email:'test_user@test.com', password:'123', password_confirmation:'123')
      expect(@user).not_to be_valid 
    end

    it "requires a password with at least 8 characters" do
      @user = User.new(password:'test', password_confirmation:'test')
      expect(@user).not_to be_valid 
      expect(@user.errors.full_messages).to include ("Email is too short (minimum is 8 characters)")
    end
  
  end

   
    #     describe "password" do
    #       it "confirms the presence of password and password_confirmation in Users" do
    #         expect(@user.password).to eq example_password_confirmation
    #       end
    #     end

  end
end

# create_table "users", force: :cascade do |t|
#   t.string "name"
#   t.string "email"
#   t.string "password_digest"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end





# STack overflow: 

# it "changes user's password" do
#   expect { send_request }.to change { user.reload.authenticate(password) }.from(false).to(user)
# end












    # needs @category AND @product initialized within that category 
#     before do
#       @category = Category.new(:name => "test_category")
#       @product = Product.new(:name => "product_name")
#     end

#     describe "name" do
#       it "confirms the presence of name in Category" do
#         expect(@category.name).to eq "test_category"
#       end
#     end

#     describe "name" do
#       it "confirms the presence of name in Product" do
#         expect(@product.name).to eq "product_name"
#       end
#     end


#   describe "Product" do
#     it "is not valid without a title" do
#       product = Product.new(name: nil)
#       expect(product).to_not be_valid
#     end
#     it "is not valid without a price" do
#       price = Product.new(price: nil)
#       expect(price).to_not be_valid
#     end
#     it "is not valid without a quantity" do
#       quantity = Product.new(quantity: nil)
#       expect(quantity).to_not be_valid
#     end
#     it "is not valid without a category" do
#       category = Product.new(category: nil)
#       expect(category).to_not be_valid
#     end
#     it "is not valid without having every property filled" do
#       valid_product = Product.new(category:@category , name:'test_name', price:5, quantity:1)
#       expect(valid_product).to be_valid
#     end
#   end

# end
# end
