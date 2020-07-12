module YARD
  module Handlers
    class DecoratorHandler < Ruby::Base
      handles method_call(:decorate)

      def process
        _dsl, header, implementation = statement
        class_name, _decorator_options = header.source.split(',')
        code_object = register ClassObject.new(namespace, class_name)
        decorated_instance_methods = if implementation.second =~ /decorated/
          implementation.third
        else
          implementation.second
        end

        decorated_instance_methods.each do |method_definition|
          parse_block(method_definition, namespace: code_object)
        end
      end
    end

    class DecoratedHandler < YARD::Handlers::Ruby::Base
      handles method_call(:decorated)
      namespace_only

      def process
        parse_block(statement.last.last, namespace: namespace, scope: :instance)
      end
    end
  end
end
