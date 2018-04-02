function result = recognize_nn(filename,Xa, Xi, Xu, Xe, Xo, n)
    
    [y, fs, bits] = wavread(filename);
   % y = wavrecord(2 * 48000, 48000);
    x = voice(y, 48000, n, 'formant');
    
     for i = 1 : size(Xa,1)
         a(i) = sqrt(sum(x - Xa(1,:)) .* (x - Xa(1,:)));
     end
     
     for i = 1 : size(Xi,1)
         b(i) = sqrt(sum(x - Xi(1,:)) .* (x - Xi(1,:)));
     end
    
     for i = 1 : size(Xu,1)
         c(i) = sqrt(sum(x - Xu(1,:)) .* (x - Xu(1,:))); 
     end
     
     for i = 1 : size(Xe,1)
         d(i) = sqrt(sum(x - Xe(1,:)) .* (x - Xe(1,:)));
     end
     
     for i = 1 : size(Xo,1)
         e(i) = sqrt(sum(x - Xo(1,:)) .* (x - Xo(1,:)));
     end
     
     f(1) = min(a);
     f(2) = min(b);
     f(3) = min(c);
     f(4) = min(d);
     f(5) = min(e); 
    
     [ans,one] = min(f);

     if one == 1
         for i = 1 : length(a)
             if min(a) == a(i)
                 a2(i) = max(a);
             else
                 a2(i) = a(i);
             end
             b2(i) = b(i);
             c2(i) = c(i);
             d2(i) = d(i);
             e2(i) = e(i);
         end
         
     elseif one == 2
         for i = 1 : length(b)
             if min(b) == b(i)
                 b2(i) = max(b);
             else
                 b2(i) = b(i);
             end
             a2(i) = a(i);
             c2(i) = c(i);
             d2(i) = d(i);
             e2(i) = e(i);
         end
         
     elseif one == 3
         for i = 1 : length(c)
             if min(c) == c(i)
                 c2(i) = max(c);
             else
                 c2(i) = c(i);
             end
             b2(i) = b(i);
             a2(i) = a(i);
             d2(i) = d(i);
             e2(i) = e(i);
         end
         
     elseif one == 4
         for i = 1 : length(d)
             if min(d) == d(i)
                 d2(i) = max(d);
             else
                 d2(i) = d(i);
             end
             b2(i) = b(i);
             c2(i) = c(i);
             a2(i) = a(i);
             e2(i) = e(i);
         end
         
     elseif one == 5
         for i = 1 : length(e)
             if min(e) == e(i)
                 e2(i) = max(e);
             else
                 e2(i) = e(i);
             end
             b2(i) = b(i);
             c2(i) = c(i);
             d2(i) = d(i);
             a2(i) = a(i);
         end

     end
     
     x(1) = min(a2);
     x(2) = min(b2);
     x(3) = min(c2);
     x(4) = min(d2);
     x(5) = min(e2); 
    
     [ans,two] = min(x);
     
     
          if two == 1
         for i = 1 : length(a2)
             if min(a2) == a2(i)
                 a3(i) = max(a2);
             else
                 a3(i) = a2(i);
             end
             b3(i) = b2(i);
             c3(i) = c2(i);
             d3(i) = d2(i);
             e3(i) = e2(i);
         end
         
     elseif two == 2
         for i = 1 : length(b2)
             if min(b2) == b2(i)
                 b3(i) = max(b2);
             else
                 b3(i) = b2(i);
             end
             a3(i) = a2(i);
             c3(i) = c2(i);
             d3(i) = d2(i);
             e3(i) = e2(i);
         end
         
     elseif two == 3
         for i = 1 : length(c2)
             if  min(c2) == c2(i)
                 c3(i) = max(c2);
             else
                 c3(i) = c2(i);
             end
             b3(i) = b2(i);
             a3(i) = a2(i);
             d3(i) = d2(i);
             e3(i) = e2(i);
         end
         
     elseif two == 4
         for i = 1 : length(d2)
             if min(d2) == d2(i)
                 d3(i) = max(d2);
             else
                 d3(i) = d2(i);
             end
                  
             b3(i) = b2(i);
             c3(i) = c2(i);
             a3(i) = a2(i);
             e3(i) = e2(i);
         end
         
     elseif two == 5
         for i = 1 : length(e2)
             if min(e2) == e2(i)
                 e3(i) = max(e2);
             else
                 e3(i) = e2(i);
             end
             
             b3(i) = b2(i);
             c3(i) = c2(i);
             d3(i) = d2(i);
             a3(i) = a2(i);
         end
     end
     
     y(1) = min(a3);
     y(2) = min(b3);
     y(3) = min(c3);
     y(4) = min(d3);
     y(5) = min(e3); 
    
     [ans,three] = min(y);
     

     if one == two
         result = one
     elseif two == three
         result = two
     elseif one == three
         result = three
     else 
         result = error
     end
         
         
     