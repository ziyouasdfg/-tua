echo off
set /A a = 1
set /A ALLLINE = 115
set /A RealAllLine = %ALLLINE%-1

echo blasting...
:loop
if %a% == %ALLLINE% goto end
	
	psi\psiblast -evalue 0.001 -num_iterations 3 -db psi\pdb -query  psi\seqtxt\%a%.txt -outfmt 0 -out objective\%a%.fm0 -out_ascii_pssm objective\%a%.pssm 

	echo %a% / %RealAllLine%

	set /A a = %a% + 1
	goto :loop
:end
echo blasting end successfully

pause