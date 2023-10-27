Pry.config.pager = false
Pry.config.history_file = ".pry_history"

def benchmark_time(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.bm{ |b| b.report{ repetitions.times(&block) } }
end

def subl(content, filename='debug.txt')
  File.open(filename, 'w') { |f| f.write(content) }
  `subl #{filename}`
end


Pry.config.theme = "tomorrow-night"

Pry.config.print = Pry::Inspector::MAP["clipped"][:value]

Pry::Prompt.add(
      :pzac,
      "A custom prompt.",
      %w[> *]
    ) do |_context, _nesting, pry_instance, sep|
      tree = pry_instance.binding_stack.map { |b| Pry.view_clip(b.eval('self')) }
      format(
        # "[%<in_count>s] (%<name>s) %<tree>s: %<stack_size>s%<separator>s ",
        "(%<name>s) %<tree>s: %<stack_size>s%<separator>s ",
        in_count: pry_instance.input_ring.count,
        name: pry_instance.config.prompt_name,
        tree: tree.join(' / '),
        stack_size: pry_instance.binding_stack.size - 1,
        separator: sep
      )
    end
Pry.config.prompt = Pry::Prompt[:pzac]
