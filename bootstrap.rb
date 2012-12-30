#!/usr/bin/env ruby
require "fileutils"

$elements = Dir.entries(".") - [".", ".."]

def winonly(what)
    exclude(what)
end

def linonly(what)
end

def exclude(what)
    $elements.delete(what)
end

load "./bootstrap-data"

$elements.each do |element|
    FileUtils.cp_r(element, "..")
end
