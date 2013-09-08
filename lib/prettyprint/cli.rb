# -*- encoding: utf-8 -*-

require 'thor'
require 'json'
require "rexml/document"

module PrettyPrint
  class Cli < Thor
    desc :json, "pretty printing JSON expression."
    def json(filename = nil)
      src = read(filename)
      json = JSON.parse(src)
      puts JSON.pretty_generate(json)
    end

    desc :xml, "pretty printing XML expression."
    def xml(filename = nil)
      src = read(filename)
      doc = REXML::Document.new src
      out = ""
      doc.write(out, 1)
      puts out
    end

    private
    def read(filename)
      if filename
        File.read(filename)
      else
        STDIN.read
      end
    end
  end
end