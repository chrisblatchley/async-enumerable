# frozen_string_literal: true

require_relative "enumerable/version"
require "async"

module Async
  module Enumerable
    class Error < StandardError; end

    # async_each creates an async task for the collection
    # and runs tasks on the individual objects.
    def async_each(&proc)
      Async do |task|
        self.each do |v|
          task.async do
            proc.call(v)
          end
        end
      end

      self
    end

  end
end

Enumerable.include(Async::Enumerable)