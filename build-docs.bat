@echo off
rdmd --build-only -lib -Isrc -D -X -Xfdocs/docs.json --force src/sdlang/package.d
ddox filter docs/docs.json --ex sdlang.lexer --ex sdlang.symbol --min-protection Public
ddox generate-html docs/docs.json docs
