# Rickshaw

DSL for building Rickshaw graphs

## Installation

Add this line to your application's Gemfile:

    gem 'rickshaw'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rickshaw

## Usage
    
    require 'rickshaw'

    Player = Struct.new(:name, :matches)
    players = [
      Player.new('Lothar Matthaeus', 25), 
      Player.new('Paolo Maldini', 23), 
      Player.new('Diego Maradona', 21)
    ]

    Rickshaw.graph :renderer => 'bar' do
      x = -1

      series players, :x => Proc.new { x += 1 }, :y => :matches.to_proc
    end

    # => {:renderer=>"bar", :series=>[{:data=>[{:x=>0, :y=>25}, {:x=>1, :y=>23}, {:x=>2, :y=>21}]}]}

## Contributing

1. Fork it ( http://github.com/minmb/rickshaw/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
