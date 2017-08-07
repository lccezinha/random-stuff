module Repositories
  module CustomerSuccess
    class ActiveRecord
      def all
        ::CustomerSuccess.all.map do |cs|
          Entities::CustomerSuccess.new(cs.name, cs.level)
        end
      end
    end
  end
end
