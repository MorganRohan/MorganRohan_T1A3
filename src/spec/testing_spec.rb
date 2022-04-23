# RSPEC tests to be run on features of app
require "rspec/autorun"

require_relative ("../files/errorhandling.rb")
require_relative ("../files/recommendationquiz.rb")

#For the review class, we look at running a test to determine if entering the rating
#Each case is set up to test a different set of answers against the methods and class

#CASE ONE

describe "should return valid rating input" do
    it "should be able to take user input for rating and determine if valid" do
        expect(invalid_rating_input(5)).to eq(5)      
    end

 #CASE TWO
    it "should be able to take user input for rating and determine if valid" do
        expect(invalid_rating_input(8)).to eq(nil)      
    end

 #CASE THREE
    it "should be able to take user input for rating and determine if valid" do
        expect(invalid_rating_input("good")).to eq(nil)
    end
end

#For the recommendation class

describe "should return valid quiz answer input" do
#CASE ONE
    it "should be able to take user input for a quiz answer and determine if valid" do
        expect(validate_input("a")).to eq("a")
    end

#CASE TWO
    it "should be able to take user input for a quiz answer and determine if valid" do
        expect(validate_input(5)).to eq(nil)
    end 
#CASE THREE
    it "should be able to take user input for a quiz answer and determine if valie" do
        expect(validate_input("hello")).to eq(nil)
    end
end