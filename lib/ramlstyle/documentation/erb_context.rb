require "erb"
require 'github/markup'

class ERBContext
  include ERB::Util
  def initialize(hash)
    hash.each_pair do |key, value|
      instance_variable_set('@' + key.to_s, value)
    end
  end

  def markdown(str)
    GitHub::Markup.render("f.md", str || "")
  end

  def render(obj)
    RendererFactory.new.renderer_for(obj).render
  end

  def get_binding
    binding
  end
end

