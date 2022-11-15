function Y=desencriptarCesar(X,k)
A = ['z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y',' '];
B = ['Z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y',' '];
L = length(X);

for i = 1:L
    disp(X(i))
   emp = abs(X(i));
   if emp >=97 && emp <=122
       for j = 1:26
           if X(i) == A(j)
               n = mod(j-k-1,26);
               Y(i) = A(n+1);
           end           
       end
   elseif emp >= 65 && emp <= 90
       for j = 1:26
           if X(i)==B(j)
               n = mod(j-k-1,26);
               Y(i) = B(n+1);
           end
       end
   
   else
       Y(i) = X(i);
   end
end





