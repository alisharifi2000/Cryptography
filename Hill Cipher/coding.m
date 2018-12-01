clear
clc
%%
#enter the message
text=input('please enter your message in lowercase: ');
%%
disp('message :');
disp(text)
%%
chr=char(text);
size_message=(length(chr));
disp('size of message:')
disp(size_message)
%%
if(mod(size_message,3)==1)
    edit_word = text(size_message);
    edit_word = strcat(edit_word,edit_word);
    text = strcat(text,edit_word);
    disp('edit text:')
    disp(text)
    chr=char(text);
    size_message=(length(chr));
    disp('size of edit message:')
    disp(size_message)
elseif(mod(size_message,3)==2)
    edit_word = text(size_message);
    text = strcat(text,edit_word);
    disp('edit text:')
    disp(text)
    chr=char(text);
    size_message=(length(chr));
    disp('size of edit message:')
    disp(size_message)
elseif(mod(size_message,3)==0)
    disp('edit text:')
    disp(text)
    chr=char(text);
    size_message=(length(chr));
    disp('size of edit message:')
    disp(size_message)
end
%%
change_message_to_code = zeros(1,size_message);
for i=1:size_message
    if(text(i)=='a')
        change_message_to_code(1,i)=0;
    elseif(text(i)=='b')
        change_message_to_code(1,i)=1;
    elseif(text(i)=='c')
        change_message_to_code(1,i)=2;
    elseif(text(i)=='d')
        change_message_to_code(1,i)=3;
    elseif(text(i)=='e')
        change_message_to_code(1,i)=4;
    elseif(text(i)=='f')
        change_message_to_code(1,i)=5;
    elseif(text(i)=='g')
        change_message_to_code(1,i)=6;
    elseif(text(i)=='h')
        change_message_to_code(1,i)=7;
    elseif(text(i)=='i')
        change_message_to_code(1,i)=8;
    elseif(text(i)=='j')
        change_message_to_code(1,i)=9;
    elseif(text(i)=='k')
        change_message_to_code(1,i)=10;
    elseif(text(i)=='l')
        change_message_to_code(1,i)=11;
    elseif(text(i)=='m')
        change_message_to_code(1,i)=12;
    elseif(text(i)=='n')
        change_message_to_code(1,i)=13;
    elseif(text(i)=='o')
        change_message_to_code(1,i)=14;
    elseif(text(i)=='p')
        change_message_to_code(1,i)=15;
    elseif(text(i)=='q')
        change_message_to_code(1,i)=16;
    elseif(text(i)=='r')
        change_message_to_code(1,i)=17;
    elseif(text(i)=='s')
        change_message_to_code(1,i)=18;
    elseif(text(i)=='t')
        change_message_to_code(1,i)=19;
    elseif(text(i)=='u')
        change_message_to_code(1,i)=20;
    elseif(text(i)=='v')
        change_message_to_code(1,i)=21;
    elseif(text(i)=='w')
        change_message_to_code(1,i)=22;
    elseif(text(i)=='x')
        change_message_to_code(1,i)=23;
    elseif(text(i)=='y')
        change_message_to_code(1,i)=24;
    elseif(text(i)=='z')
        change_message_to_code(1,i)=25;
    elseif(text(i)=='.')
        change_message_to_code(1,i)=26;
    elseif(text(i)=='?')
        change_message_to_code(1,i)=27;
    elseif(text(i)==' ')
        change_message_to_code(1,i)=28;
    end
end
%%
disp('change_message_to_code matrix :')
disp(change_message_to_code);
%%
n=size_message/3;
number_message=reshape(change_message_to_code,[3,n]);
disp('number_message :')
disp(number_message)
%%
key=[3 10 20;20 9 17;9 4 17];
disp('key :')
disp(key);
%%
code=key*number_message;
این جا یک ماتریس تشکلیل میشه از ضرب  ماتریس کلید در ماتریس پیام
disp('numberic code:');
disp(code);
[n,m]=size(code);
disp('number of row of code');
disp(n);
disp('number of col of code');
disp(m);
mod_code = zeros(n,m);
for i=1:n
    for j=1:m
        mod_code(i,j)=mod(code(i,j),29);
    end
end
%% 
disp('mod_code:');
disp(mod_code)
mod_code_reshape=reshape(mod_code,[1,n*m]);
disp('mod_code_reshape:');
disp(mod_code_reshape);
numberic_code = char(1,n*m);
%%
for i=1:n*m
    if(mod_code_reshape(i)==0)
        numberic_code(i)='a';
    elseif(mod_code_reshape(i)==1)
        numberic_code(i)='b';
    elseif(mod_code_reshape(i)==2)
        numberic_code(i)='c';
    elseif(mod_code_reshape(i)==3)
        numberic_code(i)='d';
    elseif(mod_code_reshape(i)==4)
        numberic_code(i)='e';
    elseif(mod_code_reshape(i)==5)
        numberic_code(i)='f';
    elseif(mod_code_reshape(i)==6)
        numberic_code(i)='g';
    elseif(mod_code_reshape(i)==7)
        numberic_code(i)='h';
    elseif(mod_code_reshape(i)==8)
        numberic_code(i)='i';
    elseif(mod_code_reshape(i)==9)
        numberic_code(i)='j';
    elseif(mod_code_reshape(i)==10)
        numberic_code(i)='k';
    elseif(mod_code_reshape(i)==11)
        numberic_code(i)='l';
    elseif(mod_code_reshape(i)==12)
        numberic_code(i)='m';
    elseif(mod_code_reshape(i)==13)
        numberic_code(i)='n';
    elseif(mod_code_reshape(i)==14)
        numberic_code(i)='o';
    elseif(mod_code_reshape(i)==15)
        numberic_code(i)='p';
    elseif(mod_code_reshape(i)==16)
        numberic_code(i)='q';
    elseif(mod_code_reshape(i)==17)
        numberic_code(i)='r';
    elseif(mod_code_reshape(i)==18)
        numberic_code(i)='s';
    elseif(mod_code_reshape(i)==19)
        numberic_code(i)='t';
    elseif(mod_code_reshape(i)==20)
        numberic_code(i)='u';
    elseif(mod_code_reshape(i)==21)
        numberic_code(i)='v';
    elseif(mod_code_reshape(i)==22)
        numberic_code(i)='w';
    elseif(mod_code_reshape(i)==23)
        numberic_code(i)='x';
    elseif(mod_code_reshape(i)==24)
        numberic_code(i)='y';
    elseif(mod_code_reshape(i)==25)
        numberic_code(i)='z';
    elseif(mod_code_reshape(i)==26)
        numberic_code(i)='.';
    elseif(mod_code_reshape(i)==27)
        numberic_code(i)='?';
    elseif(mod_code_reshape(i)==28)
        numberic_code(i)=' ';
    end
end
%%
disp('cipher_message:')
disp(numberic_code)
%%


        
        
