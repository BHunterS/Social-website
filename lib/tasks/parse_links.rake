namespace :parse do
    desc 'Parse links and create business models'
    task :links => :environment do
        require 'nokogiri'
        require 'open-uri'

        URL = 'https://en.wikipedia.org/wiki/List_of_social_networking_services'

        html = URI.open(URL)
        doc = Nokogiri::HTML(html)

        # Підключення до бази даних 
        class List_of_social_networking_services < ApplicationRecord
        end

        doc.css('table.wikitable tbody tr').each_with_index do |row, index|
            next if index == 0

            name = row.at_css('th').text.strip
            type = row.at_css('td:nth-child(2)').text.strip rescue ""
            focus = row.at_css('td:nth-child(3)').text.strip rescue ""
          
            # Створення нового запису у бізнес-моделі та збереження його у базі даних
            unless List_of_social_networking_services.exists?(list_id: index, name: name, social_network_type: type, focus: focus)
                social_network = List_of_social_networking_services.new(list_id: index, name: name, social_network_type: type, focus: focus)
                social_network.save
            end
        end
        puts 'Data parsed and saved to the database successfully!'
    end
  end