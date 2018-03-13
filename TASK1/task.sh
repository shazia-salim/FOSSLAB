#SEMESTER 1 Result
#Converting Pdf to txt file
pdftotext -layout -nopgbrk result_MDL.pdf file1.txt
#Selecting Only CS studentS marks
grep "MDL16CS" file1.txt>file2.txt
#to get marks in the next line matching MDL16CS
awk '/MDL16CS/{getline;print}' file1.txt>new.txt
cat -n new.txt >F2.txt
cat -n file2.txt >FILE2.txt
join FILE2.txt F2.txt>final.txt
#final.txt contains marks along with Registration Number
rm F2.txt FILE2.txt new.txt file2.txt
#To replace Grade with respective gradepoints
sed -i 's/(O),/ 10/g; s/(A+),/ 9/g; s/(A),/ 8.5/g; s/(B+),/ 8/g; s/(B),/ 7/g; s/(C),/ 6/g; s/(P),/ 5/g; s/(F),/ 0/g; s/(FE),/ 0/g; s/(I),/ 0/g;' final.txt
#To replace Last Sunject's Grade with their respective Gradepoints
sed -i 's/(O)/ 10/g; s/(A+)/ 9/g; s/(A)/ 8.5/g; s/(B+)/ 8/g; s/(B)/ 7/g; s/(C)/ 6/g; s/(P)/ 5/g; s/(F)/ 0/g; s/(FE)/ 0/g; s/(I)/ 0/g;' final.txt
#taking only Registeration Number & Gradepoints
cut --complement -d " " -f 3,5,7,9,11,13,15,17,19 final.txt>new.txt
#Calculation of SGPA
awk '{sum=0;sum+=($3*4+$4*4+$5*3+$6*3+$7*3+$8*3+$9*1+$10*1+$11*1);printf("%s %0.2f \n",$2,sum/23)}' new.txt>abc.txt
cat -n abc.txt>SEM1.txt
#SEMESTER 2 Result

pdftotext -layout -nopgbrk result_MDL2.pdf SEM.txt
grep "MDL16CS" SEM.txt>SEM2.txt
awk '/MDL16CS/{getline;print}' SEM.txt>NEW.txt
cat -n NEW.txt >F.txt
cat -n SEM2.txt >sem2.txt
join sem2.txt F.txt>FINAL.txt
rm F.txt sem2.txt NEW.txt SEM2.txt
sed -i 's/(O),/ 10/g; s/(A+),/ 9/g; s/(A),/ 8.5/g; s/(B+),/ 8/g; s/(B),/ 7/g; s/(C),/ 6/g; s/(P),/ 5/g; s/(F),/ 0/g; s/(FE),/ 0/g; s/(I),/ 0/g;' FINAL.txt
sed -i 's/(O)/ 10/g; s/(A+)/ 9/g; s/(A)/ 8.5/g; s/(B+)/ 8/g; s/(B)/ 7/g; s/(C)/ 6/g; s/(P)/ 5/g; s/(F)/ 0/g; s/(FE)/ 0/g; s/(I)/ 0/g;' FINAL.txt

cut --complement -d " " -f 3,5,7,9,11,13,15,17,19 FINAL.txt>NEW.txt

awk '{sum=0;sum+=($3*4+$4*4+$5*3+$6*1+$7*1+$8*4+$9*3+$10*3+$11*1);printf("%s %0.2f \n",$2,sum/24)}' NEW.txt>abc2.txt

cat -n abc2.txt>SEM2.txt

join -o 1.1 1.2 1.3 2.3 SEM1.txt SEM2.txt>RESULT.txt

awk '{s=0;s+=$3*23+$4*24;printf("%d %s %0.2f %0.2f %0.2f \n",$1,$2,$3,$4,s/47)}' RESULT.txt

join -o 2.1 2.2 2.3 2.4 2.5 1.2 1.3 1.4 StudList.txt RESULT.txt

rm FINAL.txt NEW.txt abc2.txt SEM2.txt SEM1.txt abc.txt 

