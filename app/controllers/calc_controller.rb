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

  def payment
    render({ :template => "calc_templates/payment_form"})
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @yrs_remain = params.fetch("yrs_remain").to_f
    @present_value = params.fetch("present_value").to_f

    @r = (@apr / 100.0) / 12.0
    @n = @yrs_remain * 12.0

    @numerator =  (@r * @present_value)
    @denom = (1.0 - ((1.0 + @r)**-@n))

    @results = @numerator / @denom

    render({ :template => "calc_templates/payment_results"})
  end
end  
  