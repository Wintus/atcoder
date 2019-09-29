# frozen_string_literal: true

COLLECTOR = Hash.new { |h, k| h[k] = [] }
COUNTER = Hash.new { |h, k| h[k] = 0 }
GRAPH = Hash.new { |h, k| h[k] = {} }

# &block = default value
def hash_new
  Hash.new { |h, k| h[k] = yield }
end

def collector
  hash_new { [] }
end

def counter
  hash_new { 0 }
end

def graph
  hash_new { {} }
end
