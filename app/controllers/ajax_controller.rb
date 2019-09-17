class AjaxController < ApplicationController
  def data
    url = URI('https://news.yahoo.co.jp/pickup/rss.xml')
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    response = http.get(url)

    uri = URI.parse("https://jsonplaceholder.typicode.com/todos/1")
    response = Net::HTTP.get_response(uri)


    @data = Hash.from_xml(response.body).to_json.html_safe
  end
end