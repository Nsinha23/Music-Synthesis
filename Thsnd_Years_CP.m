fs = 44100;
bits = 16;

%% Note declarations
p = (1:88);
%% Time declarations

t1 = 1;
t2 = .75;
t3= 1;
t4 = 1.75;
t5 = 1.25;
time = 15; %total duration of song
%% Note Formation

[n26, s26] = Project3_Note_Function(p(26),t1,fs);
[n42, s42] = Project3_Note_Function(p(42),t1,fs);
[n25, s25] = Project3_Note_Function(p(25),t2,fs);
[n40, s40] = Project3_Note_Function(p(40),t2,fs);
[n23, s23] = Project3_Note_Function(p(23),t2,fs);
[n_42, s_42] = Project3_Note_Function(p(42),t2,fs);
[n19, s19] = Project3_Note_Function(p(19),t2,fs);
[n43, s43] = Project3_Note_Function(p(43),t2,fs);
[n38, s38] = Project3_Note_Function(p(38),t2,fs);
[n21, s21] = Project3_Note_Function(p(21),t2,fs);

%% Sound Length
length = time*fs+1;
signal = zeros(1,length);
st1 = 1; ed1 = s26;
st2 = ed1; ed2 = st2+10000;
st3 = ed2; ed3 = st3+s42-1;
st4 = ed3; ed4 = st4+10000;
st5 = ed4; ed5 = st5+s26-1;
st6 = ed5; ed6 = st6+10000;
st7 = ed6; ed7 = st7+s25-1;
st8 = ed7; ed8 = st8+10000;
st9 = ed8; ed9 = st9+s23-1;
st10 = ed9; ed10 = st10+10000;
st11 = ed10; ed11 = st11+s23-1;
st12 = ed11; ed12 = st12+10000;
st13 = ed12; ed13 = st13+s23-1;
st14 = ed13; ed14 = st14+10000;
st15 = ed14; ed15 = st15+s25-1;
st16 = ed15; ed16 = st16+10000;
st17 = ed16; ed17 = st17+s19-1;
st18 = ed17; ed18 = st18+10000;
st19 = ed18; ed19 = st19+s19-1;
st20 = ed19; ed20 = st20+10000;
st21 = ed20; ed21 = st21+s19-1;
st22 = ed21; ed22 = st22+10000;
st23 = ed22; ed23 = st23+s38-1;
st24 = ed23; ed24 = st24+10000;
st25 = ed24; ed25 = st25+s21-1;
st26 = ed25; ed26 = st26+10000;
st27 = ed26; ed27 = st27+s21-1;

%% Signal formation
signal(st1:ed1) = signal(st1:ed1)+n26+n42;
signal(st2:ed2) = signal(st2:ed2)+0;
signal(st3:ed3) = signal(st3:ed3)+n26+n42;
signal(st4:ed4) = signal(st4:ed4)+0;
signal(st5:ed5) = signal(st5:ed5)+n26+n42;
signal(st6:ed6) = signal(st6:ed6)+0;
signal(st7:ed7) = signal(st7:ed7)+n25+n40;
signal(st8:ed8) = signal(st8:ed8)+0;
signal(st9:ed9) = signal(st9:ed9)+n23+n_42;
signal(st10:ed10) = signal(st10:ed10)+0;
signal(st11:ed11) = signal(st11:ed11)+n23+n_42;
signal(st12:ed12) = signal(st12:ed12)+0;
signal(st13:ed13) = signal(st13:ed13)+n23+n_42;
signal(st14:ed14) = signal(st14:ed14)+0;
signal(st15:ed15) = signal(st15:ed15)+n25+n40;
signal(st16:ed16) = signal(st16:ed16)+0;
signal(st17:ed17) = signal(st17:ed17)+n19+n43;
signal(st18:ed18) = signal(st18:ed18)+0;
signal(st19:ed19) = signal(st19:ed19)+n19+n43;
signal(st20:ed20) = signal(st20:ed20)+0;
signal(st21:ed21) = signal(st21:ed21)+n19+n43;
signal(st22:ed22) = signal(st22:ed22)+0;
signal(st23:ed23) = signal(st23:ed23)+n19+n38;
signal(st24:ed24) = signal(st24:ed24)+0;
signal(st25:ed25) = signal(st25:ed25)+n21+n_42;
signal(st26:ed26) = signal(st26:ed26)+0;
signal(st27:ed27) = signal(st27:ed27)+n21+n_42;

%%
x = max(signal);
signal = 0.9*signal/abs(x);
sound(signal,fs,bits);
audiowrite('Output_Part1.wav', signal, fs);