chcp 437 >nul
setlocal enabledelayedexpansion

reg add "HKEY_CLASSES_ROOT\footman\CurVer" /ve /t REG_SZ /d "footman" /f
reg add "HKEY_CLASSES_ROOT\footman\CLSID" /ve /t REG_SZ /d "{26037A0E-7CBD-4FFF-9C63-56F2D0770214}" /f
reg add "HKEY_CLASSES_ROOT\footman" /ve /t REG_SZ /d "footman" /f
reg delete "HKEY_CLASSES_ROOT\dm.dmsoft" /f >nul 2>&1
reg delete "HKEY_CLASSES_ROOT\CLSID\{26037A0E-7CBD-4FFF-9C63-56F2D0770214}" /f >nul 2>&1
reg add "HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{26037A0E-7CBD-4FFF-9C63-56F2D0770214}" /ve /t REG_SZ /d "footman" /f >nul 2>&1
reg add "HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{26037A0E-7CBD-4FFF-9C63-56F2D0770214}\ProgID" /ve /t REG_SZ /d "footman" /f >nul 2>&1
reg add "HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{26037A0E-7CBD-4FFF-9C63-56F2D0770214}\InprocServer32" /ve /t REG_SZ /d "D:\github\dm.dll\src\dm.dll" /f >nul 2>&1
reg add "HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{26037A0E-7CBD-4FFF-9C63-56F2D0770214}\InprocServer32" /v "ThreadingModel" /t REG_SZ /d "Apartment" /f >nul 2>&1

endlocal
