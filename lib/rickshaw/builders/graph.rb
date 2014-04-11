module Rickshaw
  module Builders

    class Graph

      def initialize(options = {})
        @options = options
        @series = []
      end

      def series(data, options = {})
        x = options.delete(:x)
        y = options.delete(:y)

        @series << options.merge({
          data: data.map do |obj|
            {
              x: obj.instance_eval(&x),
              y: obj.instance_eval(&y)
            }
          end
        })
      end

      def build
        @options.merge({
          series: @series
        })
      end

    end
  end
end