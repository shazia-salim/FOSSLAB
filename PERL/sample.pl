#!/usr/bin/perl -w
	
$var1=12;
$var2=7.8;

print "The Value contained in variable1 and variable2 are $var1 and $var2 respectively";
$var3=$var1 + $var2;
print "\n Sum is $var3";
print "\n";

#creating arrays
@array=(1,2,3,4,5);
print @array;


#creating Hash

%hash = ('Shazia' => 24 , 'Krishna' => 32, 'Shruthi' => 25 );
print "\n";
print $hash{'Shruthi'};


