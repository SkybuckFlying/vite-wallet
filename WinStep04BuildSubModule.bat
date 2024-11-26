@echo off

@echo ### Win Step 04: Build submodule: ###
@echo ### Win Step 04.1: Change to submodule folder: ###
@echo cd vite-web-wallet
cd vite-web-wallet

@echo ### Win Step 05: Install dependencies for submodule: ###
@echo yarn install
call yarn install

@echo ### Win Step 06: Build submodule: ###
@echo yarn build
call yarn build

@echo ### Win Step 08: Change back to main folder ###
@echo cd ..
cd ..