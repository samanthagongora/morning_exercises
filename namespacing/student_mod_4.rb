module Student
  class Module4
    attr_reader :projects
    def initialize
      @projects = ['quantified self']
    end

    def pass?
      false
    end

    def help
      puts 'gives help'
    end
  end
end
