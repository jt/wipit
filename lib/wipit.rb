module Wipit
  extend self

  def command
    @command ||= ''
  end

  def run(*args)
    process *args
    puts    command
    system  command
  end

  def process(*args)
    options = {:branch => '', :push => false}
    until args.empty?
      case arg = args.shift
      when '-p' then options[:push] = true
      else
        options[:branch] = arg
      end
    end
    build options
  end

  def build(options={})
    @command = ''
    @command << "git checkout -b #{options[:branch]} && " unless options[:branch].empty?
    @command << "git add . && git rm $(git ls-files --deleted) && git commit -m 'WIP'"
    @command << " && git push origin #{options[:branch]}" unless options[:branch].empty? || options[:push] != true
    @command
  end
end
