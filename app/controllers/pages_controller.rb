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



end
