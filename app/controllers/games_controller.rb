require 'open-uri'
    require 'json'
class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    # raise
    input = params[:word]
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
if input
url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
   user_serialized = URI.open(url).read
   user = JSON.parse(user_serialized)
  result_one = user["found"]
  result_two = input.split("").all? { |e| @letters.include?(e) }
  end
end
end
