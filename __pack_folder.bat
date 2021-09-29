if [%1]==[] (
    echo "Не указан путь"
    goto EXIT)

for %%C in (%1\*.fb2) do (
    echo %%C
    7z a -tzip -sdel "%%C.zip" "%%C" > nul
)

:EXIT