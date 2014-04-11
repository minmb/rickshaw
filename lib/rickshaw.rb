require "rickshaw/version"

module Rickshaw
  class << self

    def graph(options = {}, &block)
      graph = Builders::Graph.new(options)
      graph.instance_eval(&block)

      graph.build
    end
  
  end

  autoload :Builders, 'rickshaw/builders'
end
