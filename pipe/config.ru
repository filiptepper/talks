require 'faye'
run Faye::RackAdapter.new(:mount => '/')