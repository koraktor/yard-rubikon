# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

module Rubikon

  module YARD

    module CodeObjects

      class CommandObject < ::YARD::CodeObjects::Base

        def aliases; [] end

        def attr_info; nil end

        def parameters; [] end

        def scope; :public end

        def sep; '>>' end

      end

    end

  end

end
