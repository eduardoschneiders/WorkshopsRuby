#encoding: UTF-8
require 'test_helper'

class ClientTest < ActiveSupport::TestCase
   test "Validates the presence of name" do
      client = Client.new name: nil
      assert ! client.valid?, "Client should not be valid"
      assert client.errors[:name].any?
   end

   test "Validates the presence of email" do
      client = Client.new email: nil
      assert ! client.valid?, "Client should not be valid"
      assert client.errors[:email].any?
   end

   test "Validates the format of email" do
      client = Client.new email: "Invalid@"
      assert ! client.valid?, "Client should not be valid"
      assert client.errors[:email].any?
   end

   def create_client
	  Client.create! name: "John",
	    email: "john@gmail.com",
	    password: 'tre543%$#',
	    password_confirmation: 'tre543%$#'
	end

	test "validates uniqueness of email" do
	  create_client
	  client = Client.new email: "john@gmail.com"
	  assert ! client.valid?, "client should be invalid"
	  assert client.errors[:email].any?
	end

	test "validates inclusion of state" do
	  client = Client.new state: 'xx'
	  assert ! client.valid?, "client should be invalid"
	  assert client.errors[:state].any?
	end

	test "validates numericality of age" do
	  client = Client.new age: "not a number"
	  assert ! client.valid?, "client should be invalid"
	  assert client.errors[:age].any?
	end

	test "validates minimum age" do
	  client = Client.new age: 17
	  assert ! client.valid?, "client should be invalid"
	  assert client.errors[:age].any?
	end

	#test "validates confirmation of password - nil" do
	#  client = Client.new password: 'hgf654^%$',
	 #               password_confirmation: nil
	 # assert ! client.valid?, "client should be invalid"
	  #assert client.errors[:password_confirmation].any?
	#end
end
