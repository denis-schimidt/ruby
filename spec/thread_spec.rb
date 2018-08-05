describe 'My behaviour' do

  it 'should do something' do
    def func1
      i = 0
      while i<=3
        puts "func1 at: #{Time.now}"
        sleep(2)
        i = i+1
      end

      if i == 4
        raise StandardError.new("Deu ruim")
      end

      return i
    end

    def func2
      j = 0
      while j<=3
        puts "func2 at: #{Time.now}"
        sleep(1)
        j = j+1
      end

      return j
    end

    def func3
      j = 0
      while j<=3
        puts "func3 at: #{Time.now}"
        sleep(1)
        j = j+1
      end

      return j
    end

    def func4
      j = 0
      while j<=3
        puts "func4 at: #{Time.now}"
        sleep(1)
        j = j+1
      end

      return j
    end

    puts "Started At #{Time.now}"
    t1 = Thread.new{func1()}
    t2 = Thread.new{func2()}
    t3 = Thread.new{func3()}
    t4 = Thread.new{func4()}
    p t1.join.value
    p t2.join.value
    p t3.join.value
    p t4.join.value

    # func1
    # func2
    # func3
    # func4
  end
end