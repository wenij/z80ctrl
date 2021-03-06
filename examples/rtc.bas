10 REM CONVERT VALUES FROM BCD
20 DEF FNBCD(V)=(V AND &HF0)/16*10+(V AND &HF)
30 OUT 0,0: REM SELECT RTC CHIP
40 REM READ DATE/TIME FROM RTC REGISTERS
50 OUT 1,6: YR=FNBCD(INP(2))+2000
60 OUT 1,5: MO=FNBCD(INP(2))
70 OUT 1,4: DY=FNBCD(INP(2))
80 OUT 1,2: HR=INP(2)
90 OUT 1,1: MI=FNBCD(INP(2))
100 OUT 1,0: S=FNBCD(INP(2))
110 REM HANDLE AM/PM
120 AMPM$=""
130 IF (HR AND &H40)=0 THEN 160: REM SKIP IF 24-HR FORMAT
140 IF HR AND &H20 THEN AMPM$="PM" ELSE AMPM$="AM"
150 HR=HR AND &H1F: REM GET RID OF AM/PM AND 12-HR BITS
160 HR=FNBCD(HR)
170 PRINT USING "The time is ##:##:##& on ##/##/####"; HR, MI, S, AMPM$, MO, DY, YR