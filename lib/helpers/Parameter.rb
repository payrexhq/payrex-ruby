# frozen_string_literal: true

require "cgi"

module Payrex
  class Parameter
    def self.encode(params, prefix = nil)
      case params
      when Array
        params.map.with_index do |value, index|
          encode(value, "#{prefix}[#{index}]")
        end.join("&")
      when Hash
        params.map do |key, value|
          encode(value, prefix ? "#{prefix}[#{key}]" : key)
        end.join("&")
      else
        "#{CGI.escape(prefix.to_s)}=#{CGI.escape(params.to_s)}"
      end
    end
  end
end
