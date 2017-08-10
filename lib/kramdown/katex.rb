require "execjs"
module Kramdown
  module KaTeX
    CONTEXT = ExecJS.compile File.read File.expand_path 'katex.min.js', __dir__
    def self.render str
      CONTEXT.call 'katex.renderToString', str
    end
  end
end

require 'kramdown/converter/html'
class Kramdown::Converter::Html
  def convert_math(el, indent)
    result = Kramdown::KaTeX.render el.value
    if el.options[:category] == :block
      el.attr['style'] = "text-align: center; #{el.attr['style']}"
      format_as_block_html 'div', el.attr, result, indent
    else
      format_as_span_html 'span', el.attr, result
    end
  end
end
