class HomeController < ApplicationController
  def lotto
    @lotto = (1..45).to_a.sample(6)
  end

  def index
  end

  def wellcome
    @name = params[:name]
  end
end
