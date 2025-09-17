class PagesController < ApplicationController
  
  def home
    render({:template => "pages_templates/home"})
  end

  def square
    render({:template => "pages_templates/home"})
  end

  def square_results

    @number = params.fetch("number").to_f
    
    @square = @number ** 2

    render({:template => "pages_templates/square_results"})
  end

  def square_root
    render({:template => "pages_templates/square_root"})
  end
  
  def square_root_results
    @number = params.fetch("number").to_f

    @square_root = @number ** 0.5

    render({:template => "pages_templates/square_root_results"})
  end

  def payment
    render({:template => "pages_templates/payment"})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
  
    @num_years = params.fetch("user_years").to_i

    @principal = params.fetch("user_pv").to_f

    r = @apr / 100 / 12

    n = @num_years * 12

    numerator = r * @principal

    denominator = 1 - 1/((1+r)**n)
    
    @payment = numerator/denominator
    
    render({:template => "pages_templates/payment_results"})
  end

  def random
    render({:template => "pages_templates/random"})
  end

  def random_results
     @min_num = params.fetch("user_min").to_f

    @max_num = params.fetch("user_max").to_f

    @rand_num = rand(@min_num..@max_num)
    
    render({:template => "pages_templates/random_results"})
  end





end
