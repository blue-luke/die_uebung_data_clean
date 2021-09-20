def clean_data
  file = File.open("german_nouns_raw.txt", "r")
  new_file = File.new("german_nouns_neat.txt", "w")
  file.readlines.each do |line|
    if (line[0].count("A-Z") == 1) && (line[0..6] != "DEUTSCH")
      new_file.puts(line[0..-3])
    end
  end
  file.close
  new_file.close
end

clean_data