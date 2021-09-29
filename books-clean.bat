@echo off
set books_dir="e:\test\"
echo Delete .null-sized files

call __clean_folder %books_dir%

for /R %books_dir% /d %%B in (*) do (
    call __clean_folder "%%B"
)

echo Well done.
set books_dir=