def label(target)
  parts = Pry.view_clip(target, max_length: 10).gsub(/[><]/, '').split('::')
  parts.size <= 2 ? parts.join('::') : "#{parts.size - 2}::#{parts.last(2).join('::')}"
end

Pry.config.prompt = [
                     proc do |target_self, nest_level|
                       if nest_level == 0
                         "pry(#{label(target_self)})\n> "
                       else
                         "pry(#{label(target_self)}):#{Pry.view_clip(nest_level)}\n> "
                       end
                     end,
                     proc do |target_self, nest_level|
                       if nest_level == 0
                         "* "
                       else
                         "* "
                       end
                     end
                    ]

Pry.config.auto_indent = false

