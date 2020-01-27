class WaterJug

  def initialize(jug_cap, initial_jug_conf, final_jug_conf)
    @jug1_cap = jug_cap[0]
    @jug2_cap = jug_cap[1]
    @jug3_cap = jug_cap[2]

    @jug1_initial_cap = initial_jug_conf[0]
    @jug2_initial_cap = initial_jug_conf[1]
    @jug3_initial_cap = initial_jug_conf[2]

    @jug1_final_cap = final_jug_conf[0]
    @jug2_final_cap = final_jug_conf[1]
    @jug3_final_cap = final_jug_conf[2]
  end

  def process_input
    @jug1_g_cap = @jug1_cap - @jug1_initial_cap == 0 ? @jug1_cap : @jug1_initial_cap #=8
    @jug2_g_cap = @jug2_cap - @jug2_initial_cap == 0 ? @jug2_cap : @jug2_initial_cap #=0
    @jug3_g_cap = @jug3_cap - @jug3_initial_cap == 0 ? @jug3_cap : @jug3_initial_cap #=0

    @jug1_t_cap = @jug1_cap - @jug1_initial_cap #=0
    @jug2_t_cap = @jug2_cap - @jug2_initial_cap #=5
    @jug3_t_cap = @jug3_cap - @jug3_initial_cap #=3

    unless (@jug1_g_cap == @jug1_final_cap) && (@jug2_g_cap == @jug2_final_cap) && (@jug3_g_cap == @jug3_final_cap )
      puts 'result with sequence.'

      puts "#{@jug1_g_cap}, #{@jug2_g_cap}, #{@jug3_g_cap}"

      transfer_jug1_to_jug2

      return if (@jug1_g_cap == @jug1_final_cap) && (@jug2_g_cap == @jug2_final_cap) && (@jug3_g_cap == @jug3_final_cap )

      transfer_jug2_to_jug3

      return if (@jug1_g_cap == @jug1_final_cap) && (@jug2_g_cap == @jug2_final_cap) && (@jug3_g_cap == @jug3_final_cap )

      transfer_jug3_to_jug1

      return if (@jug1_g_cap == @jug1_final_cap) && (@jug2_g_cap == @jug2_final_cap) && (@jug3_g_cap == @jug3_final_cap )

      transfer_jug2_to_jug3

      return if (@jug1_g_cap == @jug1_final_cap) && (@jug2_g_cap == @jug2_final_cap) && (@jug3_g_cap == @jug3_final_cap )

      transfer_jug1_to_jug2

      return if (@jug1_g_cap == @jug1_final_cap) && (@jug2_g_cap == @jug2_final_cap) && (@jug3_g_cap == @jug3_final_cap )

      transfer_jug2_to_jug3

      return if (@jug1_g_cap == @jug1_final_cap) && (@jug2_g_cap == @jug2_final_cap) && (@jug3_g_cap == @jug3_final_cap )

      transfer_jug3_to_jug1

      return if (@jug1_g_cap == @jug1_final_cap) && (@jug2_g_cap == @jug2_final_cap) && (@jug3_g_cap == @jug3_final_cap )
    end
  end

  private

  def transfer_jug1_to_jug2
    if @jug2_t_cap > 0 && @jug1_g_cap > 0
      @jug2_g_cap = @jug2_g_cap + ( @jug1_g_cap > @jug2_t_cap ? @jug2_t_cap : @jug1_g_cap )
      @jug1_g_cap = @jug1_g_cap - ( @jug1_g_cap > @jug2_t_cap ? @jug2_t_cap : @jug1_g_cap )

      @jug2_t_cap = @jug2_cap - @jug2_g_cap
      @jug1_t_cap = @jug1_cap - @jug1_g_cap
    end
    puts "#{@jug1_g_cap}, #{@jug2_g_cap}, #{@jug3_g_cap}"
  end

  def transfer_jug2_to_jug3
    if @jug3_t_cap > 0 && @jug2_g_cap > 0
      @jug3_g_cap = @jug3_g_cap + ( @jug2_g_cap > @jug3_t_cap ? @jug3_t_cap : @jug2_g_cap)
      @jug2_g_cap = @jug2_g_cap - ( @jug2_g_cap > @jug3_t_cap ? @jug3_t_cap : @jug2_g_cap)

      @jug3_t_cap = @jug3_cap - @jug3_g_cap
      @jug2_t_cap = @jug2_cap - @jug2_g_cap
    end
    puts "#{@jug1_g_cap}, #{@jug2_g_cap}, #{@jug3_g_cap}"
  end

  def transfer_jug3_to_jug1
    if @jug1_t_cap > 0 && @jug3_g_cap > 0
      @jug1_g_cap = @jug1_g_cap + ( @jug3_g_cap > @jug1_t_cap ? @jug1_t_cap : @jug3_g_cap)
      @jug3_g_cap = @jug3_g_cap - ( @jug3_g_cap > @jug1_t_cap ? @jug1_t_cap : @jug3_g_cap)

      @jug1_t_cap = @jug1_cap - @jug1_g_cap
      @jug3_t_cap = @jug3_cap - @jug3_g_cap
    end
    puts "#{@jug1_g_cap}, #{@jug2_g_cap}, #{@jug3_g_cap}"
  end

end
