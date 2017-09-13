# frozen_string_literal: true
# encoding: utf-8

# TODO: scope it
def label(target)
  parts = Pry.view_clip(target, max_length: 10).gsub(/[><]/, '').split('::')
  parts.size <= 2 ? parts.join('::') : "#{parts.size - 2}::#{parts.last(2).join('::')}"
end

Pry.config.prompt = \
  [
    proc do |target_self, nest_level|
      if nest_level.zero?
        "pry(#{label(target_self)})\n> "
      else
        "pry(#{label(target_self)}):#{Pry.view_clip(nest_level)}\n> "
      end
    end,
    proc do |_target_self, _nest_level|
      '* '
    end
  ]

Pry.config.auto_indent = false
Pry.editor = 'vim'

begin
  require 'awesome_print'
  AwesomePrint.pry!
  # The following line enables awesome_print for all pry output,
  # and it also enables paging
  # Pry.config.print = proc { |output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output) }

  # If you want awesome_print without automatic pagination, use the line below
  # Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError
  puts 'gem install awesome_print  # <-- highly recommended'
end

default_command_set = Pry::CommandSet.new do
  # command 'pbcopy', 'Copy argument to the clip-board' do |str|
  #   IO.popen('pbcopy', 'w') { |pipe| pipe << str.to_s }
  # end

  command 'sql', 'Send sql over AR.' do |query|
    if ENV['RAILS_ENV'] || defined?(Rails)
      pp ActiveRecord::Base.connection.exec_query(query)
    else
      pp 'No rails env defined'
    end
  end

  command 'caller_method' do |depth|
    depth = depth.to_i || 1
    if /^(.+?):(\d+)(?::in `(.*)')?/ =~ caller(depth + 1).first
      file   = Regexp.last_match[1]
      line   = Regexp.last_match[2].to_i
      method = Regexp.last_match[3]
      output.puts [file, line, method]
    end
  end
end

Pry.config.commands.import default_command_set

class String
  def |(pbcopy)
    pbcopy(self) if pbcopy == :pbcopy
    self
  end
end

def pbcopy(str = nil)
  if str.nil?
    :pbcopy
  else
    IO.popen('pbcopy', 'w') { |pipe| pipe << str.to_s }
  end
end
