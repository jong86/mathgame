module MathGame
  class Question
    attr_reader :solution

    def initialize
      @num1 = 1 + rand(10)
      @num2 = 1 + rand(10)
      @solution = @num1 + @num2
    end

    def ask
      "What does #{@num1} + #{@num2} equal?"
    end
  end
end
