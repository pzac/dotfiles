Pry.config.pager = false

def benchmark_time(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.bm{ |b| b.report{ repetitions.times(&block) } }
end

def subl(content, filename='debug.txt')
  File.open(filename, 'w') { |f| f.write(content) }
  `subl #{filename}`
end

