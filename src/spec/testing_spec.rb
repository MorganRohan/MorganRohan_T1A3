# RSPEC tests to be run on features of app
# The Ruby Gem RSPEC is used in this instance so that if this file is run, the gem automatically runs the tests at outlined below
require "rspec/autorun"

require_relative ("../files/errorhandling.rb")
require_relative ("../files/recommendationquiz.rb")

#TEST ONE
#Test one will focus on the review class feature and specifically the handling to ensure valid input for the rating number
#The method invalid_rating_input has been written to check for this and will be tested below

#CASE ONE - input a valid entry and expect valid response

describe "should return valid rating input" do
    it "should be able to take user input for rating and determine if valid" do
        expect(invalid_rating_input(5)).to eq(5)      
    end

 #CASE TWO - input invalid integer entry and expect invalid response
    it "should be able to take user input for rating and determine if valid" do
        expect(invalid_rating_input(8)).to eq(nil)      
    end

 #CASE THREE - input invalid string entry and expect invalid response
    it "should be able to take user input for rating and determine if valid" do
        expect(invalid_rating_input("good")).to eq(nil)
    end
end

#TEST TWO
#Test two will focus on the recommendation class feature, more specifically the quiz and the handling involved to ensure only one of two answers is given
#The method validate_inputhas been written to check for this and will be tested below

describe "should return valid quiz answer input" do
#CASE ONE - input a valid entry and expect a valid response
    it "should be able to take user input for a quiz answer and determine if valid" do
        expect(validate_input("a")).to eq("a")
    end

#CASE TWO - input an invalid integer entry and expect and invalid response
    it "should be able to take user input for a quiz answer and determine if valid" do
        expect(validate_input(5)).to eq(nil)
    end 
#CASE THREE - input an invalid string entry and expect invalid response
    it "should be able to take user input for a quiz answer and determine if valie" do
        expect(validate_input("hello")).to eq(nil)
    end
end