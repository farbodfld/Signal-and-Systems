n = 50;

Matrix = zeros(n , n); # making  an 2x2 array.
for i=1:n
  for j=1:n
    Matrix(i,j) = randi([1 3]);  # fill it with random numbers between 1 to 3.
  endfor
endfor
##fprintf([repmat('%d' , 1 , n) '\n'] , Matrix);

for f=1:500
                      # chose random 25x25 subarray of Matrix (50x50 array)
  r=randperm(50,25);  # store 25 unique radom numbers between 1 to 50 az rows. 
  c=randperm(50,25);  # store 25 unique radom numbers between 1 to 50 az columns.

for p=r  # move in r and c arrays to check that chosen position has 8 (3 or 5) neighbors.
  for o=c
    if p==1 && o==1  #(3 neighbors)
      temp = [Matrix(p , o+1) , Matrix(p+1 , o) , Matrix(p+1 , o+1)];
      num = randi([1 3]);
      Matrix(p,o) = temp(num);
      
    elseif p==1 && o==50 #(3 neighbors)
      temp2 = [Matrix(p , o-1) , Matrix(p+1 , o) , Matrix(p+1 , o-1)];
      num2 = randi([1 3]);
      Matrix(p,o) = temp2(num2);
      
    elseif p==50 && o==1 #(3 neighbors)
      temp3 = [Matrix(p-1 , o) , Matrix(p-1 , o+1) , Matrix(p , o+1)];
      num3 = randi([1 3]);
      Matrix(p,o) = temp3(num3);
      
    elseif p==50 && o==50 #(3 neighbors)
      temp4 = [Matrix(p , o-1) , Matrix(p-1 , o) , Matrix(p-1 , o-1)];
      num4 = randi([1 3]);
      Matrix(p,o) = temp4(num4);
      
    elseif p==1  #(5 neighbors)
      temp5 = [Matrix(p , o-1),Matrix(p+1 , o-1),Matrix(p+1 , o),Matrix(p , o+1),Matrix(p+1 , o+1)];
      num5 = randi([1 5]);
      Matrix(p,o) = temp5(num5);
      
    elseif p==50  #(5 neighbors)
      temp6 = [Matrix(p , o-1),Matrix(p-1 , o-1),Matrix(p-1 , o),Matrix(p-1 , o+1),Matrix(p , o+1)];
      num6 = randi([1 5]);
      Matrix(p,o) = temp6(num6);
      
    elseif o==1   #(5 neighbors)
      temp7 = [Matrix(p-1 , o),Matrix(p-1 , o+1),Matrix(p , o+1),Matrix(p+1 , o+1),Matrix(p+1 , o)];
      num7 = randi([1 5]);
      Matrix(p,o) = temp7(num7);
      
    elseif o==50  #(5 neighbors)
      temp8 = [Matrix(p-1 , o),Matrix(p-1 , o-1),Matrix(p , o-1),Matrix(p+1 , o-1),Matrix(p+1 , o)];
      num8 = randi([1 5]);
      Matrix(p,o) = temp8(num8);
      
    else   #(8 neighbors)
      temp9 = [Matrix(p-1 , o-1),Matrix(p , o-1),Matrix(p+1 , o-1),Matrix(p+1 , o),Matrix(p+1 , o+1),Matrix(p , o+1),Matrix(p-1 , o+1),Matrix(p-1 , o)];
      num9 = randi([1 8]);
      Matrix(p,o) = temp9(num9);
    endif
  endfor
 endfor
 imagesc(Matrix);
 title(f)
 pause(0.1)
end