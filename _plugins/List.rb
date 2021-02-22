require "liquid"

module Jekyll
  module ListTag
    class ListTag < Liquid::Tag

      def initialize(tag_name, text, tokens)
        super
        @list = text.split(', ')
      end

    def render(context)
        str = "<ul>";
        @list.each do |val|
          str += "<li>" + val + "</li>"
        end
        str += "</ul>"
        str
      end
    end
  end
end

Liquid::Template.register_tag('list', Jekyll::ListTag::ListTag)