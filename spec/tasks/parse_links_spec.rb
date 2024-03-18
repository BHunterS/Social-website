require 'rails_helper'
require 'rake'

describe 'parse:links' do
    before(:all) do
      # Підгружаємо rake-задачу и та визначаємо задачу оточення
      load Rails.root.join('lib', 'tasks', 'parse_links.rake')
      Rake::Task.define_task(:environment)
    end
  
    describe 'task execution' do
      it 'should parse links and create business models' do
        # Act: визиваємо нашу rake-задачу
        Rake::Task['parse:links'].invoke
  
        # Assert: перевіряємо, що створені моделі в базі даних
        expect(List_of_social_networking_services.count).to be > 0
      end
    end
  
    describe 'data parsing' do
      it 'correctly parses data from the specified URL' do
        # Act: визиваємо нашу rake-задачу
        Rake::Task['parse:links'].invoke
  
        # Assert: перевіряємо щоб дані були правильно розпарсені та збережені у базі даних
        expect(List_of_social_networking_services.last.name).to_not be_nil
        expect(List_of_social_networking_services.last.social_network_type).to_not be_nil
        expect(List_of_social_networking_services.last.focus).to_not be_nil
      end
    end
  
describe 'database handling' do
  it 'does not create duplicate entries in the database' do
    # Act: Визиваємо нашу rake-задачу
    Rake::Task['parse:links'].invoke

    # Assert: Перевіряємо, що в базі даних є лише один запис з унікальною комбінацією полів
    unique_records = List_of_social_networking_services.group(:name, :social_network_type, :focus).having('count(*) > 1')
    expect(unique_records).to be_empty
  end
end
  
    # Інші тести
end