# frozen_string_literal: true

module Blueprinter
  module TypeHelpers
    private

    def array_like?(object)
      Blueprinter.configuration.array_like_classes.any? do |klass|
        object.is_a?(klass)
      end
    end

    def lazy_array_like?(object)
      array_like?(object) && object.is_a?(Enumerator::Lazy)
    end
  end
end
