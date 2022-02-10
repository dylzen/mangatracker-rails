class ReleasesSpider < Kimurai::Base
    @name = 'releases_spider'
    @engine = :mechanize
    @config = {
        user_agent: "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36",
        before_request: { delay: 4..7 }
    }
    def self.process(url)
        @start_urls = [url]
        self.crawl!
    end

    def parse(response, url:, data: {})
        response.xpath("//*[@class='col-xs-12 col-sm-12 col-md-12 col-lg-12 date-separator' or @class='col-xs-12 col-sm-6 col-md-4 col-lg-3']").each do |release|
            item = {}
            item_previous = {}
            date_temp = release.css("div[@class='date']")
            item[:date] = date_temp&.text&.squish
            if item[:date].blank? and item_previous[:date].present?
                item[:date] = item_previous[:date]
            end
            item[:month] = release.css("div[@class='month']")&.text&.squish
            item[:day] = release.css("div[@class='day']")&.text&.squish
            # item_previous = { :data => item }
            item_previous = item.dup
            next if item[:day] == "sabato" or item[:day] == "domenica"
            item[:title] = release.css("div[class='titoli'] h5")&.text&.squish
            ### Add manga titles to a list to only fetches those titles instead of all releases ###
            # next if item[:title] != "Jujutsu Kaisen - Sorcery Fight"
            item[:book] = release.css("div[class='titoli'] h3")&.text&.squish
            next if item[:book] == "" and item[:date] == ""
            # item[:link] = release.css("a[href*='edizione']").map { |link| link['href'] }
            # item[:picture] = release.xpath(".//div[@class='img-wrap']/img/@src")
            # item[:editor] = release.css("div[class='titoli'] h4")&.text&.squish
            puts JSON.pretty_generate(item)
            if item_previous[:date].present?
                Release.where(item_previous).first_or_create
            else
                Release.where(item).first_or_create
            end
        end
    end
end

