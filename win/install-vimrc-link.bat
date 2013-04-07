@echo off

echo Copying the main vimrc config file to your HOME directory
echo and adjusting the paths so that VIM can bootstrap itself correctly.

set WINVIM_DIR=%CD%
cd ..
set REPO_DIR=%CD%
cd %WINVIM_DIR%

echo let $VIMREPODIR = fnamemodify(expand('%REPO_DIR%'), ":p:8:h")  >> _vimrc
echo source $VIMREPODIR\_vimrc >> _vimrc

move _vimrc "%USERPROFILE%\_vimrc"

echo Job DONE. Now you can just launch VIM :)
