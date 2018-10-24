F = fopen('poetry.txt', 'r');               %open the file of poetry.txt in the way of Read-only
R = textscan(F,' %s', 'delimiter','\n');    %Use newline as a delimiter
row_num = length(R{1});                     %use the "row_num" as the name of the number of row
row_num                                     %print the number of row
          
F = fopen('poetry.txt','r');                %Open the file of poetry.txt in the way of Read-only again
[char,char_num] = fscanf(F,'%c');

F = fopen('poetry.txt','r');  
anno_num = 0;                                             
for s = 1 : char_num                        %ergodic again
    x = fscanf(F,'%c',1);         
    if x == '%'            
        anno_num = anno_num + 1;           %when the sting is "%",anno_num++
    end
end 
anno_num                                   %print the number of annotation
%about the add, i can only do this