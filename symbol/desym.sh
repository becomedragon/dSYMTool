ls *.crash | while read file; do
old_file_name=${file}
new_file_name=`echo ${old_file_name} | tr -d ' '`
mv "${old_file_name}" "${new_file_name}"
done


export DEVELOPER_DIR=/Applications/XCode.app/Contents/Developer
mkdir desymbol
ls *.crash > file.txt
cat file.txt | while read line
do
	# exportname = 
    ./symbolicatecrash ./${line} ./*.app.dSYM > "./desymbol/de_${line}"
    # ./symbolicatecrash ./${line} ./vr.app > "de_${line}"
    # echo ${exportname}
done