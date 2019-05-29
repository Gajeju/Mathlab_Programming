x = input('성적입력 :');

if x >= 90
    Grade = 'A'
elseif (x>=80 && x<90)
   Grade = 'B'
elseif(x>=70 && x<80)
    Grade = 'C'
elseif(x>=60 && x<70)
    Grade = 'D'
else
    Grade = 'F'
end
