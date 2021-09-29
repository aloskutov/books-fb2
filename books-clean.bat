@echo off
if [%1] == [] (
    set books_dir="e:\test"
) else (
    set books_dir=%1
)

echo Delete .null-sized zip-files
echo Work folder: %books_dir%

call __clean_folder %books_dir%
for /R %books_dir% /d %%B in (*) do (
    call __clean_folder "%%B"
)

echo Well done.
set books_dir=