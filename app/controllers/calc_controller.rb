class CalcController < ApplicationController
  def square
    @number = params.fetch("number")

    @square_results = @number ** 2.0

    render({ :template => "calc_templates/square"})
  end
end  
  