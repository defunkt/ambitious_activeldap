module Ambition
  module Adapters
    module ActiveLdap
      class Query

        def kick
          options = {}
          string = to_s
          options[:filter] = string unless string.empty?
          owner.find(:all, options)
        end

        def size
          raise "Not Implemented"
        end

        def to_s
          Array(clauses[:select]).join
          clauses[:select].first.to_s
        end
        
      end
    end
  end
end
