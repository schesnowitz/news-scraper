class CreateNewsJob < ApplicationJob 


  def perform(*args)
    page = Nokogiri::HTML(open('https://news.google.com/news/'))


    @title = page.xpath('//*[@id="yDmH0d"]/c-wiz/div/div[3]/main/div[1]/div[1]/c-wiz/div/c-wiz[2]/c-wiz/div/div[2]/c-wiz/a').text

    @body = page.xpath('//*[@id="yDmH0d"]/c-wiz/div/div[3]/main/div[1]/div[2]/c-wiz/div/c-wiz[1]/c-wiz/div/div[2]/c-wiz[2]/a').text
    
    @source = page.xpath('//*[@id="yDmH0d"]/c-wiz/div/div[3]/main/div[1]/div[2]/c-wiz/div/c-wiz[3]/c-wiz/div/div[2]/c-wiz[1]/div/span[1]').text
    
    
    @title_url = page.css('#yDmH0d > c-wiz > div > div.fWwQIb.ChVoCd.rOrCPc.AfWyGd > main > div.KaRWed.XogBlf > div:nth-child(2) > c-wiz > div > c-wiz.PaqQNc.QwxBBf.f2t20b > c-wiz > div > div.v4IxVd > c-wiz.M1Uqc.kWyHVd > a').attr('href')
    
    @image_url = page.css('#yDmH0d > c-wiz > div > div.fWwQIb.ChVoCd.rOrCPc.AfWyGd > main > div.KaRWed.XogBlf > div:nth-child(2) > c-wiz > div > c-wiz.PaqQNc.QwxBBf.f2t20b > c-wiz > div > div.X20oP > a > img').attr('src')
    
      news = News.new
        news.title = @title
        news.body = @body 
        news.source = @source 
        news.title_url = @title_url
        news.image_url = @image_url

         
        news.save


  end
end 

