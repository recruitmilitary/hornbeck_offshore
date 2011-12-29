require 'hornbeck_offshore/version'
require 'net/https'
require 'date'
require 'ostruct'
require 'nokogiri'
require 'open-uri'

module HornbeckOffshore

  class << self
    attr_accessor :ca_path
  end

  class Job < OpenStruct
    def self.all
      document = post('https://tbe.taleo.net/NA9/ats/careers/searchResults.jsp?org=HOS&cws=1',
                      'org' => 'HOS',
                      'cws' => '1',
                      'act' => 'search',
                      'WebPage' => 'JSRCH',
                      'WebVersion' => '0',
                      'keywords' => '',
                      'submit' => 'Search')

      tables = document.search("table")
      table  = tables[2]
      jobs = []

      rows = table.search("tr")
      rows.each_with_index do |row, index|
        next if index < 3 || index >= rows.size - 1

        title, location = row.search("td")

        jobs << Job.new(:title => title.text.strip,
                        :location => location.text.strip,
                        :url => title.at('a').attr('href').gsub(/;jsessionid=(.*)\?/, '?'))
      end

      jobs
    end

    def self.post(url, attributes)
      request(:post, url, attributes)
    end

    def self.get(url)
      request(:get, url)
    end

    def self.request(method, url, attributes = {})
      uri = URI.parse(url)

      case method
      when :post
        request = Net::HTTP::Post.new(uri.path)
        request.set_form_data(attributes)
      when :get
        request = Net::HTTP::Get.new([uri.path, uri.query].join('?'))
      else
        raise "unknown http method: #{method}"
      end

      http = Net::HTTP.new(uri.host, uri.port)

      if (uri.port == 443) # ssl?
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_PEER
        http.ca_path = ::HornbeckOffshore.ca_path if ::HornbeckOffshore.ca_path
      end

      response = http.request(request)

      Nokogiri::HTML(response.body)
    end

    def id
      url =~ /rid=(\d+)/
      $1
    end

    def description
      document = self.class.get(url)

      document.search("table tr").each_with_index do |row, index|
        next unless index == 9

        return row.to_s
      end
    end
  end

end
