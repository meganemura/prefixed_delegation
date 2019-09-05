module PrefixedDelegation
  module Methods
    def delegate(*methods, to: nil, prefix: nil, allow_nil: nil, private: nil, prefixed: nil)
      return super(*methods, to: to, prefix: prefix, allow_nil: allow_nil, private: private) unless to
      return super(*methods, to: to, prefix: prefix, allow_nil: allow_nil, private: private) unless prefixed

      method_prefixed_by = "#{prefixed == true ? to : prefixed}_"
      substituted_methods = methods.map { |x| x.to_s.sub(/^#{method_prefixed_by}/, '').to_sym }

      super(*substituted_methods, to: to, prefix: prefixed, allow_nil: allow_nil, private: private)
    end
  end
end

Module.prepend(::PrefixedDelegation::Methods)
