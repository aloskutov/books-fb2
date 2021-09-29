@echo off
if [%1] == [] (
    set books_dir="e:\test"
) else (
    set books_dir=%1
)

echo Pack fb2-file to fb2.zip-file
echo Work folder: %books_dir%

call __pack_folder %books_dir%

for /R %books_dir% /d %%B in (*) do (
    call __pack_folder "%%B"
)

echo Well done.
set books_dir=