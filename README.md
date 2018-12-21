# UnixPrograms

| Script Name                                | Purpose                                                                    |
| :----------------------------------------- | :------------------------------------------------------------------------- |
| `append_file_contents_in_directory.sh`     | To read files in a given directory and append contents                     |
| `add_numbers_in_files.sh`                  | To add numbers stored in multiple files and display the sum                |
| `arithmetic_operations.sh`                 | To perform arithmetic operations using expr and bc                         |
| `count_of_file_and_folders.sh`             | To display count of files and folders                                      |
| `if_then_else.sh`                          | To demonstrate if-then-else                                                |
| `play_with_text_formatting.sh`             | To demonstrate different ways to print the text                            |
| `tput.sh`                                  | To use tput to play around on the terminal                                 |
| `banner.sh`                                | To display the input text as a large banner                                |                         
| `check_file_directory_existence.sh`        | To check if file/directory exists and display its size/contents            |
| `check_file_permission_and_append.sh`      | To check if the user has write permission to file and append contents      |
| `string_operations.sh`                     | To perform operations on strings                                           |
| `logical_operations.sh`                    | To perform logical operations                                              |
| `case_block.sh`                            | To demonstrate the usage of case statement                                 |
| `case_block_advanced.sh`                   | To demonstrate the advanced usage of case statement                        |
| `loops.sh`                                 | To demonstrate the usage of different kind of loops                        |
| `read_user_info_from_etc_passwd_file.sh`   | To check and display user info from the /etc/passwd file                   |
| `pretty_print_file.sh`                     | To read contents from file and append line numbers                         |
| `sleep.sh`                                 | To demonstrate the usage of sleep command                                  |
| `count_lines_and_words.sh`                 | To display count of lines and words in a given file                        |
| `artifactory_cleanup.sh`                   | To clean up folders and files from artifactory                             |
| `deployment_verification.sh`               | Adds a sample jsp - useful in validating if deployment is successful       |
| `show_jenkins_build_info.sh`               | To retrieve build information from jenkins                                 |
| `containers_monitor.sh`                    | To monitor status of multiple docker containers in a single terminal       |
| `run_on_all_nodes.sh`                      | To run a single commands on several nodes in a shot                        |
| `set_proxy.sh`                             | Script to set http proxy                                                   |
| `cf_login.sh`                              | Single script to switch between several accounts for cloud accounts        |


## Other useful commands
1. **/etc/passwd** - The password file that stores the user accounts information
   username:x(password is encrypted):userid:groupid:computername:homedir:defaultshell 
   
2. The encrypted passwords are stored in the **/etc/shadow** file.

3. **IFS** - Internal field separator; by default space / tab / LineFeed
   You may change the value using 
   ```sh 
   IFS=:
   ```

4. **grep** To find a pattern of text in a file
```sh
grep -n -i -c <pattern> <file_name>
```
| Switch   | Purpose                                                                  |
| :------- | :----------------------------------------------------------------------- |
| `-i`     | ignores case sensitivity                                                 |
| `-n`     | displays the line number of the matched occurrence in the file           |
| `-c`     | displays only the count of occurrences                                   |
| `-v`     | invert matches - shows all the lines that do not match the given pattern |
