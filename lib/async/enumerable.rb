# frozen_string_literal: true

require_relative "enumerable/version"
require "async"

module Async
  module Enumerable
    class Error < StandardError; end

    def aeach(&proc)
      Async do |task|
        self.each do |v|
          task.async do
            proc.call(v)
          end
        end
      end
    end

  end
end
