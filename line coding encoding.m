clc;
clear all;
data=input('');
N=length(data);

%unipolar=data;
%unipolar=[unipolar unipolar(end)];
%t=0:N;

%polarnzr=[];
%for i=1:N
%    if data(i)==1
%        polarnzr=[polarnzr 1];
%    else
%       polarnzr=[polarnzr -1]; 
%    end
    
%end
%polarnzr=[polarnzr polarnzr(end)];    
%t=0:N;

%polarinzr=[];
%a=1;
%for i=1:N
%    if data(i)==1
%        a=-a; 
 %   end
 %   polarinzr(i)=a;
%end
%polarinzr=[polarinzr polarinzr(end)];    
%t=0:N;


%polarrz=[];
%for i=1:N
%    if data(i)==1
%        polarrz=[polarrz data(i) 0];
%    else 
%         polarrz=[polarrz -1 0];
%    end
%end
%polarrz=[polarrz polarrz(end)];
%t=0:0.5:N;

manchester=[];
for i=1:N
    if data(i)==1
        manchester=[manchester 1 -1];
    else 
         manchester=[manchester -1 1];
    end
end
manchester=[manchester manchester(end)];
t=0:0.5:N;

% home work bipolar 

stairs(t,manchester,'r');
ylim([-1.5 1.5]);
xlim([0 N]);
xlabel('time');
ylabel('amplitude voltage');
grid on;