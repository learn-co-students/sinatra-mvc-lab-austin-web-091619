class PigLatinizer 
    
    def piglatinize(str)
        words=str.split()
        pig = words.map{|word| wordconvert(word)}
        pig.join(" ")
    end
    def wordconvert(word)
        if word.slice(0).downcase=~ /[aeiou]/ 
            return word+"way"
        end
        i = 1
        while i <= word.length-1 do
            if word.slice(i).downcase =~ /[aeiou]/ 
                letters = word.split(//)
                moved = []
                i.times do
                    moved.push( letters.shift())
                end
                
                return letters.join+moved.join+"ay"
            end
            i+=1
        end
            # /[aeiou]/
    end

end