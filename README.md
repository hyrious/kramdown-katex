# ~~`Kramdown::KaTeX`~~

Use [kramdown/math-katex](https://github.com/kramdown/math-katex) instead.

- - -

Original content:

Notice: since [KaTeX](https://github.com/Khan/KaTeX) is built for speed,
there's no need to use this library at server side if your target is browser,
see the [official document](https://kramdown.gettalong.org/math_engine/mathjax.html#using-katex-instead-of-mathjax).

I made this library for some specific usage.

## Install

    gem install kramdown-katex

## Usage

```ruby
require 'kramdown'
require 'kramdown/katex'

p Kramdown::Document.new('# So, $$ E = mc^2 $$').to_html
```

## License

MIT.