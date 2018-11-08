require 'open-uri'
class StartScrap

    def initialize(link)
        @link = link
    end

    def perform
        doc = Nokogiri::HTML(open(@link).read)
        hash = Hash.new(0)
        i = 0
        array = []
        array2 = []

        doc.css("a.currency-name-container").each do |elem|
            array << elem.text
        end
        doc.css("a.price").each do |elem|
            array2 << elem.text
        end
            while i < 2062 do
            hash.store(array[i], array2[i])
            i += 1
            end
            return hash
    end

    def save(hash)
        hash.save
    end
end
