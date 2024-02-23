require 'nokogiri'
require 'open-uri'
require 'csv'

URL = 'https://en.wikipedia.org/wiki/List_of_social_networking_services'

html = URI.open(URL)
doc = Nokogiri::HTML(html)

CSV.open('services.csv', 'w') do |csv|
  # Запис заголовків стовпців
  csv << ['id', 'name', 'type', 'focus']
  
  # Витягнення даних з трьох стовпців
  doc.css('table.wikitable tbody tr').each_with_index do |row, index|
    next if index == 0
    
    name = row.at_css('th').text.strip
    type = row.at_css('td:nth-child(2)').text.strip rescue ""
    focus = row.at_css('td:nth-child(3)').text.strip rescue ""
    
    # Запис даних у файл CSV
    csv << [index, name, type, focus]
  end
end
  