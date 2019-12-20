@echo off



SET "zipper=7z.exe"

SET "low_n_first=ALOV ME3 v1.1.1 (1080p) (Part 1 of 2)-773-1-1-1-1576138407.zip"
SET "low_n_second=ALOV ME3 v1.1.1 (1080p) (Part 2 of 2)-773-1-1-1-1576138384.zip"

SET "low_first=A Lot Of Videos (ALOV) for ME3 - 1080p_1.1.1.zip.001"
SET "low_second=A Lot Of Videos (ALOV) for ME3 - 1080p_1.1.1.zip.002"


SET "high_n_first=ALOV ME3 v1.1.1 (4K) (Part 1 of 4)-773-1-1-1-1576267099.zip"
SET "high_n_second=ALOV ME3 v1.1.1 (4K) (Part 2 of 4)-773-1-1-1-1576310196.zip"
SET "high_n_third=ALOV ME3 v1.1.1 (4K) (Part 3 of 4)-773-1-1-1-1576310213.zip"
SET "high_n_forth=ALOV ME3 v1.1.1 (4K) (Part 4 of 4)-773-1-1-1-1576310223.zip"

SET "high_first=A Lot Of Videos (ALOV) for ME3 - 4K_1.1.1.zip.001"
SET "high_second=A Lot Of Videos (ALOV) for ME3 - 4K_1.1.1.zip.002"
SET "high_third=A Lot Of Videos (ALOV) for ME3 - 4K_1.1.1.zip.003"
SET "high_forth=A Lot Of Videos (ALOV) for ME3 - 4K_1.1.1.zip.004"



ECHO A Lot Of Videos (ALOV) for ME3 - Unpacker for version 1.1.1
ECHO _
ECHO This automatic unpacker will do everything by itself (assuming all part files are present).
ECHO If any files are missing you will be informed which ones are.
ECHO The process might be long (depending on your PC's specs).
ECHO Typical finish time for full extraction of the 1080p package is 30 minutes, or 1 hour 30 minutes for the 4K package.
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
ECHO Checking for 1080p package files . . .
IF EXIST "%low_n_first%" (
	IF EXIST "%low_n_second%" (
		ECHO 1080p package files detected.
		ECHO Unpacking . . .



		IF EXIST "%low_first%" (
			ECHO 1080p package Part 1 unpacked detected.
			ECHO Skipping to Part 2 . . .
		) ELSE (
			7z.exe x "%low_n_first%"
		)

		IF EXIST "%low_second%" (
			ECHO 1080p package Part 2 unpacked detected.
			ECHO Skipping . . .
		) ELSE (
			7z.exe x "%low_n_second%"
		)

		ECHO _
		ECHO First stage of unpacking finished.
		ECHO Unpacking final stage . . .

		7z.exe x "%low_first%"

		ECHO _
		ECHO Unpacking of the 1080p package finished.
	) ELSE (
		ECHO !!! 1080p package "%low_n_second%" not detected.
		ECHO !!! If you want to use 1080p version download it from Nexus mods and place it next to this bat file.
	) 
) ELSE (
	ECHO !!! 1080p package "%low_n_first%" not detected.
	ECHO !!! If you want to use 1080p version download it from Nexus mods and place it next to this bat file.
)


ECHO _
ECHO Checking for 4K package files . . .
IF EXIST "%high_n_first%" (
	IF EXIST "%high_n_second%" (
		IF EXIST "%high_n_third%" (
			IF EXIST "%high_n_forth%" (
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
					ECHO Skipping . . .
				) ELSE (
					7z.exe x "%high_n_forth%"
				)

				ECHO _
				ECHO First stage of unpacking finished.
				ECHO Unpacking final stage . . .

				7z.exe x "%high_first%"

				ECHO _
				ECHO Unpacking of the 4K package finished.
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