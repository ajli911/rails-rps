class PagesController < ApplicationController
  def home
    render({ :template => "game_template/home"})
  end

  def rock
    options = ["rock", "paper", "scissors"]

    @cpu = options.sample
  
    if @cpu == "rock"
      @outcome = "tied"
    elsif @cpu == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
  
    render({ :template => "game_template/rock"})
  end

  def paper
    options = ["rock", "paper", "scissors"]

    @cpu = options.sample

    if @cpu == "rock"
      @outcome = "won"
    elsif @cpu == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end

    render({ :template => "game_template/paper"})
  end

  def scissors
    options = ["rock", "paper", "scissors"]

    @cpu = options.sample

    if @cpu == "rock"
      @outcome = "lost"
    elsif @cpu == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end
    
    render({ :template => "game_template/scissors"})
  end
end
