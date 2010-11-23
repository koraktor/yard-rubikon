# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

module Rubikon

  module YARD

    module Handlers

      module Legacy

        class CommandHandler < ::YARD::Handlers::Ruby::Legacy::Base

          MATCH = /\Acommand\s+:?(.+?)\s+(do|\{)/
          handles MATCH

          process do
            command_args = statement.tokens.to_s[MATCH, 1].split(',')
            name = command_args[0].strip

            if namespace.type == :class &&
              namespace.inheritance_tree.include?(RUBIKON_APPLICATION_BASE)
              register CodeObjects::CommandObject.new(namespace, name, :class) do |o|
                o.source = statement.source
              end
            end
          end
      
        end

      end

    end

  end

end
