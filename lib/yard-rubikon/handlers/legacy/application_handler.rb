# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

module Rubikon

  module YARD

    module Handlers

      module Legacy

        class ApplicationHandler < ::YARD::Handlers::Ruby::Legacy::ClassHandler

          handles TkCLASS

          process do
            if statement.tokens.to_s =~ /^class\s+(#{NAMESPACEMATCH})\s*(?:<\s*(.+)|\Z)/m
              classname = $1
              object = ::YARD::CodeObjects::ClassObject.new(namespace, classname)

              if object.inheritance_tree.include? RUBIKON_APPLICATION_BASE
                object.dynamic   = true
                object[:rubikon] = true
              end
            end
          end

        end

      end

    end

  end

end
