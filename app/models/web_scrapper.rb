class WebScrapper < Kimurai::Base
  @name = 'vehicles_spider'
  @engine = :mechanize
  @start_urls = ["https://metaruby.com/"]
  @config = {
      user_agent: "Chrome/68.0.3440.84"
    }

  def parse(response, url:, data: { })
    response.xpath("//table[@class='topic-list']//tbody//tr").each do |tr|
      scrapped_data = {
                        title: tr.at('td[1]//span').text.strip,
                        category: tr.at('td[1]//div//span').text.strip,
                        date: tr.at('td[3]').text.strip
                      }
      ::ScrappedData.find_or_create_by(scrapped_data)                
    end
  end
end
