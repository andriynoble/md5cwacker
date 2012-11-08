#!usr/bin/perl
# Functional style
use Digest::MD5 qw(md5 md5_hex md5_base64);

# This will be the CLI Version

print "CLI Version of Md5 Cwaker\n";
print "    By: #Hack group\n";
print "\n";
# Ask if they want more info on using the program
print "More Information: (y,n) > ";
chomp ($info = <STDIN>);

if($info eq 'y')
{
print "\n";
print "Thank you for using MD5HashBruteMod.pl", "\n";
print "\n";
print "This program was originally written by MrAristo, Jagggy, and M4fia.\n";
print "(Approx. 20-06-08)\n";
print "MJaggy has since modified the program for GUI using perl::tk.\n";
print "(Approx. 22-06-08)", "\n";
print "\n";
print "This program works on any MD5 sum that uses letters and Numbers\n";
print "This program is currently being rewritten by MrAristo to work with\n";
print "spaces.\n";
print "\n";
print "Please keep in mind that for truly complex hashes you will\n";
print "most likely not be living when this actually finishes.\n";
print "\n";
print "And so we have made it that the program can check against\n";
print "Premade hashs, we also have made it so you can generate your\n";
print "own hashs.";
print "Thank you, and have a nice day.\n";
print "\n";
}
else
{
sleep 1;
}
#Variables for the Menu System
$MenuChoice = "";
#The Menu System
print "Options Menu: \n";
print "A. Brute Force Hashs\n";
print "B. Crack using Premade Hashs\n";
print "C. Make hashs\n";
print "D. Exit\n";
print "\n";
print "Choose an Option Please (a,b,c) > ";
chomp ($MenuChoice = <STDIN>);
print "\n";
# Check to make sure the user put it in LowerCase . Dont be a REEEEE use lower Case
while($MenuChoice eq 'A' || $MenuChoice eq 'B' || $MenuChoice eq 'C')
{
#Caps to make sure the user knows what they are doing, and a smily face
print "PLEASE USE LOWER CASE:)\n";
print "Choose an Option Please (a,b,c) > ";
chomp ($MenuChoice = <STDIN>);
print "\n";
}
if($MenuChoice eq 'a')
{
#Define variables used in this Menu
$BruteMenuOption = "";
#Brute Forces Hashs
print "Do you know if the Password uses\n";
print "Letters, Numbers or Both?\n";
print "A. Letters Only\n";
print "B. Numbers\n";
print "C. Both or I dont know\n";
print "     Knowing the Answer will speed things up a little\n";
sleep 1;
print "Menu Option: (a,b,c) Lower Case > ";
chomp ($BruteMenuOption = <STDIN>);
while($BruteMenuOption eq 'A' || $BruteMenuOption eq 'B' || $BruteMenuOption eq 'C')
{
#YES AGAIN GOTTA MAKE SURE!
print "PLEASE USER LOWER CASE! : )\n";
print "Menu Option: (a,b,c) Lower Case > ";
chomp ($BruteMenuOption = <STDIN>);
}

if($BruteMenuOption eq 'a')
{
print "Input Hash: >";
chomp ($hash = <STDIN>);
print "\n";
print "Patience is a virtue…", "\n";
print "Starting…", "\n";
sleep 1;

while(1)
{
$letter++;
$md5OfLetter = md5_hex($letter);
if($md5OfLetter eq $hash)
{
print "\n";
print "\n";
print "$letter", "\n";
print $md5OfLetter, "\n";
last;
}
else
{
next;
}
}
}
}
if($MenuChoice eq 'b')
{
#Use file Tool by Jagggy to use Premade Hashs in files made by Option c
#setting up variables for later use.

my $Hash = ";

my $PathToFile = ";

#variables that will be edited by the program

my $FileHash;

my $FileSolution;

#open the file

open MD5FILE,$PathToFile or die $!;

#read throug each line

foreach (<MD5FILE>) {

#extract the file's hash and the solution of it

if ($_ =~ /(.*?) (.*?)/) {

$FileHash = $1;

$FileSolution = $2;

}

#check if the hash is the same as the one from the file

if ($_ eq $FileHash) {

print "Hash cracked!\n";

print "$Hash = $FileSolution";

exit;

}

}

#close the file

close MD5FILE;

}
if($MenuChoice eq 'c')
{
#Use Hash Creation Tool
print "The Hash creation tool uses Digest::Md5\n";
print "Using md5_hex()\n";
# OH GAWD IT GETS BIG! > Thats what she said
print "Warning: PLEASE NOTICE FILE SIZE\n";
# SO yeah please make sure they can choose line lenghth : )
print "AS IT GETS VERY BIG VERY FAST!\n";
}
if($MenuChoice eq 'd')
{
#End the fuckin program! BYE SUCKER!
}