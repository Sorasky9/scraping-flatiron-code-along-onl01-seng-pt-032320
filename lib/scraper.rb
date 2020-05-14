require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end


  def get_page
doc = Nokogiri::HTML (open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end

def get_courses
self.get_page.css(".post")

end

def make_courses
get_courses.each do |course|
  puts course
  binding.pry
end
end

end
