#!/usr/bin/env ruby
require "fileutils"

$elements = Dir.entries(".") - [".", ".."]

def windows?
    RUBY_PLATFORM =~ /mingw/
end

def linux?
    !windows?
end

def exclude(what)
    $elements.delete(what)
end

load "./bootstrap-data.rb"

$elements.each do |element|
    puts "#{element} -> .."
    FileUtils.cp_r(element, "..", :remove_destination => true)
end
