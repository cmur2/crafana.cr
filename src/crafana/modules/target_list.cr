module TargetList
  property targets : Array(Crafana::Target) = Array(Crafana::Target).new

  def add_target(**args, &block)
    target = Target.new(**args)
    yield target
    targets << target
  end
end
