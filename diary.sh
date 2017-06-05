DATE=`date`
echo -e '\n---' >> $HOME/DEV/00.txt
echo -e ${DATE} >> $HOME/DEV/00.txt
# echo -e '\n' >> $HOME/DEV/00.txt
nvim $HOME/DEV/00.txt
