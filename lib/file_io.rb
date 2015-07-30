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
  def file_getter
    return @file
  end
end
