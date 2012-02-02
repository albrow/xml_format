# ----------------------------------------------------------------------------------------------------------------------------------
#
# a simple command line tool that takes an xml file as an argument, parses it, auto-formats it, and rewrites it
# you can do batch operations and supply more than one filename at a time.
# 
# basic usage: ruby format_xml.rb file.xml file2.xml ...
#
# required gems: libxml-ruby
#
# created by Alex Browne on 2-2-12, licensed under WTFPL
#
# ---------------------------------------------------------------------------------------------------------------

require 'rubygems'
require 'libxml'

ARGV.each do |file_name|
  file = File.open(file_name, 'r+')
  doc = LibXML::XML::Document.file(file_name)
  file.write(doc)
end

puts "converted #{ARGV.length} file(s)"