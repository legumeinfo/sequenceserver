class Hash
  def deep_copy
    Marshal.load Marshal.dump self
  end

  def deep_merge(other)
    merge(other) do |key, oldval, newval|
      if oldval.is_a? Hash then
        oldval.deep_merge(newval)
      else
        newval
      end
    end
  end
end