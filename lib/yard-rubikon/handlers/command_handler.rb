# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

module Rubikon

  module YARD

    module Handlers

      class RubikonCommandHandler < ::YARD::Handlers::Ruby::Base

        handles method_call(:command)
        namespace_only

        process do
          name = statement.parameters.first.jump(:tstring_content, :ident).source
          if namespace.type == :class && namespace.inheritance_tree.include?(RUBIKON_APPLICATION_BASE)
            register CodeObjects::CommandObject.new(namespace, name, :public) do |o|
              o.source = statement.source
            end
          end
        end
    
      end

    end

  end

end
