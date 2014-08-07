/Triangle Program
Mathieu Ferster
June 10th, 2014
/

puts "Please specify a text file containing a triangle, including the path.\nFor example: " + 'C:\RubyExamples\triangle.txt';
path = gets.chomp;
text = File.open(path).read;

array = Array.new;
maxDepth = 0;

text.each_line do |line|
	maxDepth += 1;
	array = array.concat(line.split(" "));
end

maxIndex = array.length - 1;
index = maxIndex-maxDepth;
depth = maxDepth - 1;

while depth > 0 do
	column = depth;
	while (column > 0 && index >= 0)
		array[index] = array[index].to_i + [array[index+depth].to_i,array[index+depth+1].to_i].max;
		index -= 1;
		column -= 1;
	end
	depth -= 1;
end

puts "The Maximum total from top to bottom is " + array[0].to_s;
