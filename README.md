Install: 
0. sudo apt install stow
1. clone repo into ~/dotfiles
2. cd ~/dotfiles
3. stow . (--adopt if file already exists)


Example: 
1. Inside dotfiles directory: 
cp -r ~/.config/MangoHud .config
2. stow . --adopt
3. git add .
4. git commit -m 'feat: added MangoHud'
5. git push


Credit to Dreams of Autonomy for the original guide: 
https://www.youtube.com/watch?v=y6XCebnB9gs
