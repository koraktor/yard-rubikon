# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

def init
  super
  sections.place(:rubikon).after(T('docstring'))
end
