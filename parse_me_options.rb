require 'optparse'
require 'ostruct'

@options = OpenStruct.new(key: nil, url: nil)

parser = OptionParser.new do |opts|

  opts.banner = 'Usage: ruby infusionsoft.rb -k <YOUR_ENCRYPTED_KEY> -u <YOUR_API_URL>'
  opts.summary_indent = ' ' * 8

  %w{url key}.each do |name|
    short = "-#{ name[0] } <API_#{ name.upcase }>"
    long = "--#{ name } <API_#{ name.upcase }>"
    description = "API #{ name.upcase } to use"

    opts.on(short, long, description){|u| @options[name] = u}
  end

  opts.on_tail('-h', '--help', 'Show this message') do
    puts opts
    puts
    puts 'For more detailed information, Read the README.rd file'
    exit
  end
end

parser.parse!

 if @options.url.nil? || @options.key.nil?
   puts "\e[31m" + '-' * 80
   puts 'Need both key and url to execute requrests'
   puts '-' * 80 + "\e[0m"
   puts parser.help
   puts
   puts 'For more detailed information, Read the README.rd file'
   exit
 end
