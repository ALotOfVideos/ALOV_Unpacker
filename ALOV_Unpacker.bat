@echo off



SET "zipper=7z.exe"

SET "high_n_first=ALOV ME3 v1.2 (4K) (Part 1 of 5)-773-1-2-1580155799.zip"
SET "high_n_second=ALOV ME3 v1.2 (4K) (Part 2 of 5)-773-1-2-1580130098.zip"
SET "high_n_third=ALOV ME3 v1.2 (4K) (Part 3 of 5)-773-1-2-1580113509.zip"
SET "high_n_forth=ALOV ME3 v1.2 (4K) (Part 4 of 5)-773-1-2-1580113539.zip"
SET "high_n_fifth=ALOV ME3 v1.2 (4K) (Part 5 of 5)-773-1-2-1580072974.zip"

SET "high_first=A Lot Of Videos (ALOV) for ME3 - 4K_1.2.zip.001"
SET "high_second=A Lot Of Videos (ALOV) for ME3 - 4K_1.2.zip.002"
SET "high_third=A Lot Of Videos (ALOV) for ME3 - 4K_1.2.zip.003"
SET "high_forth=A Lot Of Videos (ALOV) for ME3 - 4K_1.2.zip.004"
SET "high_fifth=A Lot Of Videos (ALOV) for ME3 - 4K_1.2.zip.005"



ECHO A Lot Of Videos (ALOV) for ME3 - Unpacker for 4K version 1.2
ECHO _
ECHO This automatic unpacker will do everything by itself (assuming all part files are present).
ECHO If any files are missing you will be informed which ones are.
ECHO The process might be long (depending on your PC's specs).
ECHO Typical finish time for full extraction of package 1 hour 30 minutes.
ECHO Do not exit or stop this process until informed it has finished.


ECHO _
ECHO Checking for 7zip executable . . .
IF EXIST "%zipper%" (
	ECHO 7zip executable confirmed.
) ELSE (
	ECHO !!! 7zip executable not detected.
	ECHO !!! Make sure the "%zipper%" is placed next to this bat file.
	PAUSE
	Exit /b
)



ECHO _
ECHO Checking for 4K package files . . .
IF EXIST "%high_n_first%" (
	IF EXIST "%high_n_second%" (
		IF EXIST "%high_n_third%" (
			IF EXIST "%high_n_forth%" (
				IF EXIST "%high_n_fifth%" (
					ECHO 4K package files detected.
					ECHO Unpacking . . .


					IF EXIST "%high_first%" (
						ECHO 4K package Part 1 unpacked detected.
						ECHO Skipping to Part 2 . . .
					) ELSE (
						7z.exe x "%high_n_first%"
					)


					IF EXIST "%high_second%" (
						ECHO 4K package Part 2 unpacked detected.
						ECHO Skipping to Part 3 . . .
					) ELSE (
						7z.exe x "%high_n_second%"
					)


					IF EXIST "%high_third%" (
						ECHO 4K package Part 3 unpacked detected.
						ECHO Skipping to Part 4 . . .
					) ELSE (
						7z.exe x "%high_n_third%"
					)


					IF EXIST "%high_forth%" (
						ECHO 4K package Part 4 unpacked detected.
						ECHO Skipping to Part 5 . . .
					) ELSE (
						7z.exe x "%high_n_forth%"
					)


					IF EXIST "%high_fifth%" (
						ECHO 4K package Part 5 unpacked detected.
						ECHO Skipping . . .
					) ELSE (
						7z.exe x "%high_n_fifth%"
					)

					ECHO _
					ECHO First stage of unpacking finished.
					ECHO Unpacking final stage . . .

					7z.exe x "%high_first%"

					ECHO _
					ECHO Unpacking of the 4K package finished.
				) ELSE (
					ECHO !!! 4K package "%high_n_fifth%" not detected.
					ECHO !!! If you want to use 4K version download it from Nexus mods and place it next to this bat file.
				)
			) ELSE (
				ECHO !!! 4K package "%high_n_forth%" not detected.
				ECHO !!! If you want to use 4K version download it from Nexus mods and place it next to this bat file.
			)
		) ELSE (
			ECHO !!! 4K package "%high_n_third%" not detected.
			ECHO !!! If you want to use 4K version download it from Nexus mods and place it next to this bat file.
		)
	) ELSE (
		ECHO !!! 4K package "%high_n_second%" not detected.
		ECHO !!! If you want to use 4K version download it from Nexus mods and place it next to this bat file.
	) 
) ELSE (
	ECHO !!! 4K package "%high_n_first%" not detected.
	ECHO !!! If you want to use 4K version download it from Nexus mods and place it next to this bat file.
)


ECHO _
ECHO Everything finished.
ECHO You can now exit this script.
PAUSE