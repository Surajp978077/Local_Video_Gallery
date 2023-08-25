@echo off
(
    echo videos=[

    for %%i in (*.webm *.mp4 *.mkv) do (
        echo "%%i",
    )

    echo ];
) > video_list.js

start "" "Movie Page.html"
