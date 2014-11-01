#!/usr/bin/env ruby
require "fileutils"

$elements = Dir.entries(".") - [".", ".."]
          - %w[README.markdown bootstrap.rb .gitmodules .git]

$elements.each do |element|
    puts "#{element} -> .."
    FileUtils.cp_r(element, "..", :remove_destination => true)
end
