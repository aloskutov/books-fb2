@echo off
set books_dir="e:\test\"
echo Pack fb2-file to fb2.zip-file

call __pack_folder %books_dir%

for /R %books_dir% /d %%B in (*) do (
    call __pack_folder "%%B"
)

echo Well done.
set books_dir=