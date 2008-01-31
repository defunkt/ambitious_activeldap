module Ambition
  module Adapters
    module ActiveLdap
      class Query

        def kick
          owner.find(:all, :filter => self.to_s)
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
