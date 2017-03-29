class Turtle
  $pi = Math::PI
  attr_accessor :act, :draw, :sent

  def initialize
    @draw=1
    @sent= $pi/2
    @act = [500,500]
    @mtrx = []
    x = []
    for i in 0..1000
      x << 0
    end

    for i in 0..1000
      y = x.clone
      @mtrx << y
    end

  end

  def write name
    name = name + ".pbm"
    open(name,'w') do |f|
      f.puts "P1"
      f.puts "1001 1001"
      @mtrx.each do |m|
        m.each do |x|
          f.print "#{x}\s"
        end
        f.print"\n"
      end
    end
  end

  def home
    @act=[500,500]
  end

  def openeye
    @draw=1
  end

  def closeeye
    @draw=0
  end

  def forward steps
    x = Math.cos(@sent)*steps
    x = Integer(x) + @act[1]
    x0 = @act[1]
    y = @act[0]
    not_eql = true
    puts "x = #{x}"
    puts "angle = #{@sent*180/$pi}"
    puts "act[0] = #{@act[0]}"

    @mtrx[y][x0] = 1 if @draw == 1

    while not_eql

      if x0 > x
        x0 = x0 - 1
        y = (x - x0)*Math.tan(@sent) + @act[0]
        puts (x - x0)
        y = Integer(y)
        # puts "#{x0},#{y}"
      else
        x0 = x0 + 1
        y = (x - x0)*Math.tan(@sent).round + @act[0]
        puts (x - x0)*Math.tan(@sent).round + @act[0]
        y = Integer(y)
        # puts "#{x0},#{y}"
      end

      # @act = [y,x0]
      begin
        @mtrx[y][x0] = 1 if @draw == 1
      rescue
      end

      not_eql = false if x0 == x

    end
    @act = [y,x0]
    puts @act.to_s

    # puts "#{x0},#{y}"
  end

  def backward steps

    y = @sent
    if @sent == 0 or @sent == 360
      x = 180
    elsif @sent == $pi/2
      x = 270
    elsif @sent == $pi
      x = 0
    elsif @sent == 3*$pi/2
      x = 90
    elsif @sent>0 and @sent<$pi/2
      x = 270-@sent*180/$pi
    elsif @sent>$pi/2 and @sent<$pi
      x = 90+@sent*180/$pi
    elsif @sent>$pi and @sent<3*$pi/2
      x = @sent*180/$pi-90
    elsif @sent>3*$pi/2 and @sent<2*pi
      x = @sent*180/$pi-180
    end
    self.setDegree(x)
    forward(steps)
    self.setDegree(y)
  end

  def rotater degree
    @sent = @sent*180/$pi - degree
    @sent = @sent % 360
    @sent = @sent*$pi/180
  end

  def rotatel degree
    @sent = @sent + degree*$pi/180
    if @sent == 2*$pi
      @sent = 0
    elsif @sent > 2*$pi
      resto = @sent / (2*$pi)
      resto = Integer(resto)
      @sent = @sent - resto*2*$pi
    end
  end

  def setPosition hor, ver
    @act = [ver-500,hor-500]
  end

  def setDegree val
    @sent = val*$pi/180
  end

  def planoC
    x = @sent
    y = @act
    w = @draw

    self.setPosition(0,0)
    self.forward(500)
    self.setPosition(0,0)
    self.backward(500)
    self.setDegree(0)
    self.setPosition(0,0)
    self.forward(500)
    self.setPosition(0,0)
    self.backward(500)

    @act = y
    @sent = x
    @draw = w
  end

end

x = Turtle.new
x.setDegree(45)
x.forward(100)
x.write "prueba"
