module Student
  class Module1
    attr_reader :projects
    def initialize
      @projects = ['credit check', 'date night', 'complete me', 'battleship', 'black thursday']
    end

    def pass?
      true
    end

    def help
      puts 'cry for help'
    end
  end
end
