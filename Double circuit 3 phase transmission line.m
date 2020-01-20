
%FORMULAE:

%GMD = (DAB . DBC . DCA.)^(1/3)
%Where DAB = (Dab . Dab' . Da'b . Da'b')1/4   similarly DBC and DCA.
%GMRa = ?(Daa' . r')
%GMRb = ?(Dbb' . r')
%GMRc = ?(Dcc' . r')
%GMRL = (GMRa  . GMRb . GMRc)^1/3

%The inductance per phase in millihenries per kilometers is given by
%L = 0.2 ln GMD/GMRL
%%The capacitance per phase in microfarads per kilometers is given by
%C =0.0556/(ln GMD/GMRC)

fprintf('DOUBLE CIRCUIT THREE PHASE TRANSPOSED TRANSMISSION LINE PARAMETERS CALCULATION (TWO BUNDLE)');

%fprintf('\n\t\t Choose the type of conductor from the list below:');
%fprintf('\n1) Partridge 	11) Ostrich\n2)Merlin 	    12) Linnet \n3) Oriole  	    13) Chickadee\n4) Ibis	        14) Flicker\n5) Hawk	        15) Hen\n6) Osprey 	    16) Parakeet\n7) Dove  	    17) Rook \n8) Grosbeak 	18) Drake Tern \n9) Rail 		19) Bluebird \n10) Blue jay 	20) Kiwi       ');

%$o=input('\n-Enter your option:');
%switch(o);
    %case 1
       % fprintf('\n\n * DISTANCE MEASUREMENTS :');
      %   D=
     %    GMR=
     %case 2
      %   D=
      %   GMR=
    %case 3
    %     D=
   %      GMR= 
%end


 
D=0.044069;
GMR=0.017374; 

fprintf('\n\t CHOOSE THE DESIRED CIRCUIT ARRANGEMENT:');
fprintf('\n-------------------------------------------------------');% Representation of both the transmision line circuit.

fprintf('\n\n CIRCUIT ARRANGEMENT 1 \t\t\t\t CIRCUIT ARRANGEMENT 2\n')
fprintf('\n\n [a1] ---<x>--- [c2]\t\t\t\t[a1] ---<x>--- [a2]');
fprintf('\n  |\t\t\t\t  |\t\t\t\t\t|\t\t\t\t  |');
fprintf('\n  |\t\t\t\t  |\t\t\t\t\t|\t\t\t\t  |');
fprintf('\n<p>\t\t\t\t  |\t\t\t\t\t<p>\t\t\t\t  |');
fprintf('\n  |\t\t\t\t  |\t\t\t\t\t|\t\t\t\t  |');

fprintf('\n [b1] ---<y>--- [b2]\t\t\t\t[b1] ---<y>--- [b2]');
fprintf('\n  |\t\t\t\t  |\t\t\t\t\t|\t\t\t\t  |');
fprintf('\n  |\t\t\t\t  |\t\t\t\t\t|\t\t\t\t  |');
fprintf('\n<q>\t\t\t\t  |\t\t\t\t\t<q>\t\t\t\t  |');
fprintf('\n  |\t\t\t\t  |\t\t\t\t\t|\t\t\t\t  |');
fprintf('\n [c1] ---<z>--- [a2]\t\t\t\t[c1] ---<z>--- [c2]\n\t');

 
                  


x1=input('\n Wish to choose option [1 (or) 2] ? ');
switch(x1)
    case 1 
        fprintf('\n\n You have chose option 1.Enter the value of following parameters in METERS(m) only');
       
        %Asking for the input parameters 
        e=input('\n\t -> Its a 2 bundle conductor. Enter the Bundle spacing: ');
       
        y1=input('\n\n -> Horizontal Distance of separation (x): ');
        y2=input('\n -> Horizontal Distance of separation (y): ');
        y3=input('\n -> Horizontal Distance of separation (z): ');
        y4=input('\n -> Vertical Distance of separation (p): ');
        y5=input('\n -> Vertical Distance of separation (q): ');

        if(y2>y1)
            y6=(y2-y1)/2;
        else
            y6=(y1-y2)/2;
        end  
            
        if(y3>y2)
            y7=(y3-y2)/2;
        else
            y7=(y2-y3)/2;
            
       
        end
        if(y1>y3)
            y8=(y1-y3)/2;
        else
            y8=(y3-y1)/2;
        end
        
        %Calculating individual distance between every conductor
        z1=(y4^2+(y6)^2)^(1/2);
        z2=((y4+y5)^2+(y8)^2)^(1/2);
        z3=((y4+y5)^2+(y3-y8)^2)^(1/2);
        z4=((y2-y6)^2+(y4)^2)^(1/2);
        z5=(y7^2+(y5)^2)^(1/2);
        z6=((y2-y7)^2+(y4)^2)^(1/2);
       
        
ckt2 = [
   '                           a1             c2        '
   ' Circuit Arrangement      .O-------------O          '
   ' --------------------    . | .       .   |.         '
   '                        .  |     .       | .        '
   '                       b1  | .       .   |  b2      '
   '                        O-------------------O       '
   '                        .  | .       .   | .        '
   '                         . |     .       |.         '
   '                         c1| .       . a2|          '
   '                            O-----------O           '];
   disp(ckt2)

fprintf('\n\n * DISTANCE MEASUREMENTS :');
fprintf('\n\t|---------------------------|--------------|');
fprintf('\n\t| 1) D(a1b1,b1a1,b2c2,c2b2) |: %f m |',z1);
fprintf('\n\t| 2) D(a1c1,c1a1,a2c2,c2a2) |: %f m |',z2);
fprintf('\n\t| 3) D(a1a2,a2a1,c1c2,c2c1) |: %f m |',z3);
fprintf('\n\t| 4) D(a1b2,b2a1,b1c2,c2b1) |: %f m |',z4);
fprintf('\n\t| 5) D(c1b1,b1c1,b2a2,a2b2) |: %f  m  |',z5);
fprintf('\n\t| 6) D(a2b1,b1a2,b2c1,c1b2) |: %f m |',z6);
fprintf('\n\t| 7) D(a1c2,c2a1)           |: %f m |',y1);
fprintf('\n\t| 8) D(b1b2,b2b1)           |: %f m |',y2);
fprintf('\n\t| 1) D(c1a2,a2c1)           |: %f m |',y3);
fprintf('\n\t|___________________________|______________|'); 
n1=(z1*z4*z4*z5)^(1/4);
n2=(z1*z6*z6*z5)^(1/4);
n3=(z2*z2*y1*y3)^(1/4);
v=(n1*n2*n3)^(1/3);

fprintf('\n *GMD CALCULATION:');
fprintf('\n\t |-----------------------------------------------|');
fprintf('\n\t | 1)D(phase AB):                  %f m   |',n1);
fprintf('\n\t | 2)D(phase BC):                  %f m   |',n2);
fprintf('\n\t | 3)D(phase AC):                  %f m   |',n3);
fprintf('\n\t | Geometric Mean Distance (GMD) = <%f>m  |',v);
fprintf('\n\t |_______________________________________________|');
r1=(GMR*e)^(1/2);
r2=((D/2)*e)^(1/2);
g1=(r1*z3)^(1/2);
g2=(r1*z3)^(1/2);
g3=(r1*y2)^(1/2);
h1=(r2*z3)^(1/2);
h2=(r2*z3)^(1/2);
h3=(r2*y2)^(1/2);
GMRL=(g1*g2*g3)^(1/3);       
GMRC=(h1*h2*h3)^(1/3);    
fprintf('\n *GMR CALCULATION:');
fprintf('\n\t|---------------------------------------------------------|');
fprintf('\n\t|Geometric Mean Radius for Inductor[GMRL]  =[%f] m  |',GMRL);              
fprintf('\n\t|Geometric Mean Radius for Capacitor[GMRC] =[%f] m  |',GMRC);       
fprintf('\n\t|_________________________________________________________|');

L=log(v/GMRL)*0.2;
fprintf('\n\n\t {INDUCTANCE (L)} =[%f] mH/km',L); 
C=0.0556/(log(v/GMRC));
fprintf('\n\t {CAPACITANCE (C)} =[%f] µF/km',C);
end     
switch(x1)
   
      case 2 
         fprintf('\n\n You have chose option 1.Enter the value of following parameters in METERS(m) only');
        
        e=input('\n\t ->.Its a double bunded conductor. Enter the Bundle spacing: ');
       
        y1=input('\n\n -> Horizontal Distance of separation (x): ');
        y2=input('\n -> Horizontal Distance of separation (y): ');
        y3=input('\n -> Horizontal Distance of separation  (z): ');
        y4=input('\n -> Vertical Distance of separation (p): ');
        y5=input('\n -> Vertical Distance of separation (q): ');

        if(y2>y1)
            y6=(y2-y1)/2;
        else
            y6=(y1-y2)/2;
        end  
            
        if(y3>y2)
            y7=(y3-y2)/2;
        else
            y7=(y2-y3)/2;
            
       
        end
        if(y1>y3)
            y8=(y1-y3)/2;
        else
            y8=(y3-y1)/2;
        end
        
        z1=(y4^2+(y6)^2)^(1/2);
        z2=((y4+y5)^2+(y8)^2)^(1/2);
        z3=((y4+y5)^2+(y3-y8)^2)^(1/2);
        z4=((y2-y6)^2+(y4)^2)^(1/2);
        z5=(y7^2+(y5)^2)^(1/2);
        z6=((y2-y7)^2+(y4)^2)^(1/2);
       
        
ckt2 = [
   '                           a1             a2        '
   ' Circuit Arrangement 2    .O-------------O          '
   ' --------------------    . | .       .   |.         '
   '                        .  |     .       | .        '
   '                       b1  | .       .   |  b2      '
   '                        O-------------------O       '
   '                        .  | .       .   | .        '
   '                         . |     .       |.         '
   '                         c1| .       . c2|          '
   '                            O-----------O           '];
   disp(ckt2);

fprintf('\n\n * DISTANCE MEASUREMENTS :');
fprintf('\n\t|---------------------------|--------------|');
fprintf('\n\t| 1) D(a1b1,b1a1,b2a2,a2b2) |: %f m |',z1);
fprintf('\n\t| 2) D(a1c1,c1a1,a2c2,c2a2) |: %f m |',z2);
fprintf('\n\t| 3) D(a1c2,c2a1,c1a2,a2c1) |: %f m |',z3);
fprintf('\n\t| 4) D(a1b2,b2a1,b1a2,a2b1) |: %f m |',z4);
fprintf('\n\t| 5) D(c1b1,b1c1,b2c2,c2b2) |: %f  m  |',z5);
fprintf('\n\t| 6) D(c2b1,b1c2,b2c1,c1b2) |: %f m |',z6);
fprintf('\n\t| 7) D(a1a2,a2a1)           |: %f m |',y1);
fprintf('\n\t| 8) D(b1b2,b2b1)           |: %f m |',y2);
fprintf('\n\t| 1) D(c1c2,c2c1)           |: %f m |',y3);
fprintf('\n\t|___________________________|______________|'); 
n1=(z1*z1*z4*z4)^(1/4);
n2=(z5*z4*z4*z5)^(1/4);
n3=(z2*z2*z3*z3)^(1/4);
v=(n1*n2*n3)^(1/3);

fprintf('\n *GMD CALCULATION:');
fprintf('\n\t |-----------------------------------------------|');
fprintf('\n\t | 1)D(phase AB):                  %f m   |',n1);
fprintf('\n\t | 2)D(phase BC):                  %f m   |',n2);
fprintf('\n\t | 3)D(phase AC):                  %f m   |',n3);
fprintf('\n\t | Geometric Mean Distance (GMD) = <%f>m  |',v);
fprintf('\n\t |_______________________________________________|');
r1=(GMR*e)^(1/2);
r2=((D/2)*e)^(1/2);

g1=(r1*y1)^(1/2);
g2=(r1*y2)^(1/2);
g3=(r1*y3)^(1/2);
h1=(r2*y1)^(1/2);
h2=(r2*y2)^(1/2);
h3=(r2*y3)^(1/2);
GMRL=(g1*g2*g3)^(1/3);       
GMRC=(h1*h2*h3)^(1/3);    
fprintf('\n *GMR CALCULATION:');
fprintf('\n\t|---------------------------------------------------------|');
fprintf('\n\t|Geometric Mean Radius for Inductor[GMRL]  =[%f] m  |',GMRL);              
fprintf('\n\t|Geometric Mean Radius for Capacitor[GMRC] =[%f] m  |',GMRC);       
fprintf('\n\t|_________________________________________________________|');

L=log(v/GMRL)*0.2;
fprintf('\n\n\t {INDUCTANCE (L)} =[%f] mH/km',L); 
C=0.0556/(log(v/GMRC));
fprintf('\n\t {CAPACITANCE (C)} =[%f] µF/km',C);
end
switch(x1)
otherwise
     fprintf('\n\tEnter proper input!!');
end    

   