Pry.config.pager = false
Pry.config.history_file = ".ruby_console_history"

def benchmark_time(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.bm{ |b| b.report{ repetitions.times(&block) } }
end

def subl(content, filename='debug.txt')
  File.open(filename, 'w') { |f| f.write(content) }
  `subl #{filename}`
end

Pry.config.theme = "tomorrow-night"

Pry.config.print = Pry::Inspector::MAP["default"][:value]

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

class Pry
  class Command
    class LoopInspector < Pry::ClassCommand
      match 'loop-inspector'
      group 'Input and Output'
      description 'Use the next available inspector'

      banner <<-BANNER
        Use the next available inspector
      BANNER

      OPTIONS = Pry::Inspector::MAP.keys

      def process
        old_key = current
        new_index = (OPTIONS.index(old_key) + 1) % OPTIONS.size
        new_key = OPTIONS[new_index]

        pry_instance.print = Pry::Inspector::MAP[new_key][:value]

        output.puts "Switched from the '#{old_key}' to the '#{new_key}' inspector!"
      end

      def current
        OPTIONS.find do |key|
          pry_instance.print == Pry::Inspector::MAP[key][:value]
        end
      end
    end

  end
end
Pry::Commands.add_command(Pry::Command::LoopInspector)
Pry.commands.alias_command 'iii', 'loop-inspector'
