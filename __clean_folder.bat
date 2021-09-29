if %1 == "" (
    echo "Не указан путь"
    goto EXIT)

for %%I in (%1\*) do (
    if %%~zI==0 (
        echo found: %%I
        rem del "%%I"
    )
)

:EXIT