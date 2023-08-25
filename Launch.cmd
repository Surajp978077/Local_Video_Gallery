@echo off
echo loading......
(
    echo videos=[
    
    for /r %%i in (*.webm *.mp4 *.mkv) do (
        set "videoPath=%%~fi"
        setlocal enabledelayedexpansion
        set "videoPath=!videoPath:\=\\!"
        echo "!videoPath!",
        endlocal
    )
    
    echo ];
) > video_list.js

start "" "Movie Page.html"
