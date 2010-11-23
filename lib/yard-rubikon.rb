# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

template_path = File.join File.dirname(__FILE__), '..', 'templates'
YARD::Templates::Engine.register_template_path template_path

base_path = File.join File.dirname(__FILE__), 'yard-rubikon'

require File.join base_path, 'common'
require File.join base_path, 'code_objects', 'command_object'

handler_path = File.join base_path, 'handlers'
handler_path = File.join handler_path, 'legacy' if RUBY18

handlers = %w{application command}
handlers.each do |handler|
  require File.join handler_path, "#{handler}_handler"
end
