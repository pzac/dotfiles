require 'rubygems'


class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

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

def subl(content, filename='debug.txt')
  File.open(filename, 'w') { |f| f.write(content) }
  `subl #{filename}`
end

ARGV.concat [ "--readline", "--simple-prompt" ]
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:USE_AUTOCOMPLETE] = false
IRB.conf[:PROMPT_MODE] = :SIMPLE
