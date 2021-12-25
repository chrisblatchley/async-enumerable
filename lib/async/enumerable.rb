# frozen_string_literal: true

require_relative "enumerable/version"
require "async"

module Async
  # Async::Enumerable is a mixin for ::Enumerable that adds
  # async support to functions that is makes sense for.
  module Enumerable
    class Error < StandardError; end

    # each_async creates an async task for the collection
    # and runs tasks on the individual objects.
    def each_async(&proc)
      Async do |task|
        each do |v|
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
