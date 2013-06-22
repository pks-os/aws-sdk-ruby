# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module Seahorse
  class Client
    module Http
      class HeaderHash

        # @api private
        def initialize
          @data = {}
        end

        def [] key
          @data[key.to_s]
        end

        def []= key, value
          @data[key.to_s] = value
        end

        # @return [Hash]
        def to_hash
          @data.dup
        end
        alias_method :to_h, :to_hash

      end
    end
  end
end
