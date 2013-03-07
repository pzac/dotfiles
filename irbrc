require 'rubygems'


class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

ANSI = {}
ANSI[:RESET]     = "\e[0m"
ANSI[:BOLD]      = "\e[1m"
ANSI[:UNDERLINE] = "\e[4m"
ANSI[:LGRAY]     = "\e[0;37m"
ANSI[:GRAY]      = "\e[1;30m"
ANSI[:RED]       = "\e[31m"
ANSI[:GREEN]     = "\e[32m"
ANSI[:YELLOW]    = "\e[33m"
ANSI[:BLUE]      = "\e[34m"
ANSI[:MAGENTA]   = "\e[35m"
ANSI[:CYAN]      = "\e[36m"
ANSI[:WHITE]     = "\e[37m"


# Loading extensions of the console. This is wrapped
# because some might not be included in your Gemfile
# and errors will be raised

def gethtml(options = {})
  url = app.url_for(options)
  app.get(url)
  app.html_document.root.to_s    
end

def mate(content, filename='debug.txt')
  File.open(filename, 'w') { |f| f.write(content) }
  `mate #{filename}`
end

ARGV.concat [ "--readline", "--simple-prompt" ]

