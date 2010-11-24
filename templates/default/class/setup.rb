# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

def init
  super
  sections.place(:rubikon).after(T('docstring'))
  sections.place(:command_summary).after(:attribute_summary)
  sections.place(:command_details, [T('command_details')]).after(:method_details_list)
end

def commands
  object.children.select do |o|
    o.is_a? Rubikon::YARD::CodeObjects::CommandObject
  end
end
