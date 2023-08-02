class CalcController < ApplicationController
  def square
    render({ :template => "calc_templates/square_form"})
  end

  def square_results
    @number = params.fetch("number").to_f

    @result = @number ** 2.0

    render({ :template => "calc_templates/square_results"})
  end

  def square_root
    render({ :template => "calc_templates/square_root_form"})
  end

  def square_root_results
    @number = params.fetch("number").to_f

    @result = @number ** (1.0/2.0)

    render({ :template => "calc_templates/square_root_results"})
  end
end  
  