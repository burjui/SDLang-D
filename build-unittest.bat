@echo off
rdmd --build-only -wi -Isrc -ofbin\sdlang-unittest -unittest -version=sdlangUnittest -version=sdlangTrace -debug -gc %* src/sdlang/package.d
