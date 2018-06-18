class HomeController < ApplicationController
  def lotto
    @lotto = (1..45).to_a.sample(6)
  end

  def index
  end

  def welcome
    @name = params[:name]
  end

  def google
  end

  def game
  end

  def gameresult
    require 'httparty'
    require 'nokogiri'
    url = 'https://pubg.op.gg/user/' + params[:username]
    doc = HTTParty.get(url)
    html = Nokogiri::HTML(doc.body)
    @result = html.css('#matchDetailWrap > div.user-content-layer__matches-content > div:nth-child(1) > div > div > div.user-content-layer__matches-list > ul > li:nth-child(1) > div.matches-item__summary > div.matches-item__column.matches-item__column--status > div.matches-item__reload-time')
    @result = @result.attr('data-ago-date').value
  end

  def randomgame
  end

  def randomgameresult
    digi = [:agumon, :gabumon, :gomamon, :guilmon, :parumon, :patamon, :piyomon, :tailmon, :tentomon, :terriermon]
    map = {agumon: "agumon.png", gabumon: "gabumon.png", gomamon: "gomamon.png", guilmon: "guilmon.png", parumon: "parumon.png", patamon: "patamon.png", piyomon: "piyomon.png", tailmon: "tailmon.png", tentomon: "tentomon.png", terriermon: "terriermon.png"}
    monsterName = {agumon: "아구몬", gabumon: "파피몬", gomamon: "쉬라몬", guilmon: "길몬", parumon: "팔몬", patamon: "파닥몬", piyomon: "피요몬", tailmon: "가트몬", tentomon: "텐타몬", terriermon: "테리어몬"}
    @name = params[:username]
    @result = digi.sample
    @img = map[@result]
    @mon = monsterName[@result]
  end

end
