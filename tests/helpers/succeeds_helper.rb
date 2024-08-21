module Shindo
  class Tests
    def succeeds(&block)
      test("succeeds") do
        !!instance_eval(&Proc.new(&block))
      end
    end
  end
end
