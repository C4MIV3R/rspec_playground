require 'json'
require 'rainbow'
require 'httparty'
require './Movie' # if we run rspec test/movie_test.rb, rspec looks for movie in the root folder
require 'rspec'

describe Movie do
  it "should return a hash" do
    Movie.new.to_hash.class.should == Hash
  end

  it "should have released in 1986" do
    @top_gun_year = Movie.new.to_hash
    @top_gun_year["Year"].should == "1986"
  end

  it "should have a rating of PG" do
    @top_gun_rating = Movie.new.to_hash
    @top_gun_rating["Rated"].should == "PG"
  end


end
