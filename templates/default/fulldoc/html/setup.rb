# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2010, Sebastian Staudt

def generate_assets
  asset('js/rubikon.js', file('js/rubikon.js', true))
  super
end
