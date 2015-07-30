require 'rest_client'
require 'json'

class FileIO
  attr_reader :file
  def initialize(file)
    @file = file
  end
  def upload
    c = RestClient.post('https://file.io', :file => File.new(@file, "rb"))
    parse = JSON.parse(c)
    puts "Uploaded #{@file} to https://file.io/" << parse["key"]
  end
  def expire(time)
    c = RestClient.post("https://file.io/?expires=#{time}", :file => File.new(@file, "rb"))
    parse = JSON.parse(c)
    puts "Uploaded #{@file} to https://file.io/" << parse["key"] << 
    " it will expire in " << parse["expiry"] << "."
  end
end
