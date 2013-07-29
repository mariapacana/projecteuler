SUM = 200
nums = [1,2,5,10,20,50,100,200]

combos = 0
(0..SUM/1).each do |a|
  (0..SUM/2).each do |b|
    (0..SUM/5).each do |c|
      (0..SUM/10).each do |d|
        (0..SUM/20).each do |e|
          (0..SUM/50).each do |f|
            (0..SUM/100).each do |g|
              (0..SUM/200).each do |h|
                if 1*a + 2*b + 5*c + 10*d + 20*e + 50*f + 100*g + 200*h == 200
                  combos += 1 
                  p "#{a}*1, #{b}*2, #{c}*5, #{d}*10, #{e}*20, #{f}*50, #{g}*100 + #{h}*200 = #{1*a + 2*b + 5*c + 10*d + 20*e + 50*f + 100*g + 200*h}"
                end
              end
            end
          end
        end
      end
    end
  end
end

p combos