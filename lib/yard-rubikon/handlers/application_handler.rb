# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

module Rubikon

  module YARD

    module Handlers

      class RubikonApplicationHandler < ::YARD::Handlers::Ruby::ClassHandler

        handles :class

        process do
          classname = statement[0].source
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
