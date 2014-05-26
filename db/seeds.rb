# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'
require 'yaml'
ACCOUNT_TYPE = ['Admin','Client']
ACCOUNT_TYPE.each do |account_type|
   AccountType.create!(:name => account_type, :status => true)
end
AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
User.create!(:first_name => 'Shamsul', :last_name => 'Haque', :email => 'shamsulsham89@gmail.com',:password => 'shamsul',:password_confirmation => 'shamsul', :account_type_id => '2')
#User.create!(:first_name => 'Rahul', :last_name => 'Sharma',  :email => 'shamsultech89@gmail.com',:password => 'shamsul',:password_confirmation => 'shamsul', :account_type_id => '1')

Category.create(:name => "Muzaffarpur",:description => "This city is famous for its litchi", :status => true )
Category.create(:name => "Kolkata",:description => "This city is famous for its misti", :status => true )
Category.create(:name => "Hyderabad",:description => "This city is famous for its biryani", :status => true )
Category.create(:name => "Agra",:description => "This city is famous for its pethha", :status => true )
Category.create(:name => "Jaipur",:description => "This is a pink city", :status => true )
Category.create(:name => "Hajipur",:description => "This city is famous for its chiniya kela", :status => true )



Pricing.create(:month => "January",:time_period => '5', :rate => '10' ,:status => true )
Pricing.create(:month => "February",:time_period => '7', :rate => '12', :status => true )
Pricing.create(:month => "March",:time_period => '9', :rate => '14', :status => true )
Pricing.create(:month => "April",:time_period => '11', :rate => '16', :status => true )