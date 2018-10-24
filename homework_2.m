F = fopen('poetry.txt','r');            %Open the file of poetry.txt in the way of Read-only
[word,word_num] = fscanf(F,'%s');       %read the number of words
word_num                                %print the number of words

F = fopen('poetry.txt','r');            %Open the file of poetry.txt in the way of Read-only again
[char,char_num] = fscanf(F,'%c');       %read the number of string
char_num                                %print the number of string 

F = fopen('poetry.txt','r');            %Open the file of poetry.txt in the way of Read-only again
punct_num = 0;                    
for n = 1 : char_num                    %ergodic
    i = fscanf(F, '%c', 1);      
    if isstrprop( i,  'punct')          %estimate the string 
        punct_num = punct_num + 1;      %when the sting is punctuation,punct_num++          
    end
end
punct_num                               %print the number of punctuation

F = fopen('poetry.txt','r');            %Open the file of poetry.txt in the way of Read-only again
sent_num = 0;                                              
for s = 1 : char_num                    %ergodic again
    x = fscanf(F,'%c',1);         
    if x == '.' | x == '?' | x == '!'              
        sent_num = sent_num + 1;        %when the sting is one of the end of a sentence,sent_num++
    end
end
sent_num

%add
F = fopen(''poetry.txt','r');              %open the file of homework_2.m in the way of Read-only
R = textscan(F,'%s','delimiter','\n');      %Use newline as a delimiter
R_num = length(R{1});                       %use the "R_num" as the name of the number of row
R_num                                       %print the number of row

