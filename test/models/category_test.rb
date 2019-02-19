require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
   
   def setup
      @category = Category.new(name: "sport")
   end
   
   test "category is valid" do
       assert @category.valid?
   end
   
   test "name should be presence" do
      @category.name = ""
      assert_not @category.valid? 
   end
   
   test "name should unique" do
       @category.save
       category2 = Category.new(name: "sport")
       assert_not category2.valid?
   end
   
   test "name is too long" do
       @category.name = "as" * 29
       assert_not @category.valid?
   end
   
   test "name is too short" do
       @category.name = "a"
       assert_not @category.valid?
   end
   
end