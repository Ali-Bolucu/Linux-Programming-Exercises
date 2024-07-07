## 1.0 Start

# echo: Print a message to the console
echo "Hello, World!"

# cat: Concatenate and print files
cat Hello_World.txt

# touch: Create a file or update the access and modification times of a file
touch New_File.txt

# cp -r: Copy files and directories inside a directory to anohther directory recursively
cp -r A_Directory/ Another_Directory/

# ============================================================================================== #

# grep: Print lines and file_names matching a pattern inside a directory
grep -r "pattern" file_*.txt
    # text_file_1.txt: pattern_aaabbbb
    # text_file_2.txt: pattern_cccdddd

# |: Pipe operator
# -d: , iki nokta olan yerden ayır demek, -f1 ise ilk kısmı al demek
grep -r "pattern" file_*.txt | cut -d: -f1
    # text_file_1.txt
    # text_file_2.txt

# ============================================================================================== #
# >: Redirect output to a file
# >>: Append output to a file
grep -r "pattern" *.txt > output.txt
cat output.txt
    # text_file_1.txt: pattern_aaabbbb
    # text_file_2.txt: pattern_cccdddd

echo "Append this line" >> output.txt
cat output.txt
    # text_file_1.txt: pattern_aaabbbb
    # text_file_2.txt: pattern_cccdddd
    # Append this line

# ============================================================================================== #