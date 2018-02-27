@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET old=frame_
SET new=perspective_
for /f "tokens=*" %%f in ('dir /b *.gif') do (
  SET newname=%%f
  SET newname=!newname:%old%=%new%!
  move "%%f" "!newname!"
)