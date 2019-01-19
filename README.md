# UnixPrograms

| Script Name                                | Purpose                                                                    |
| :----------------------------------------- | :------------------------------------------------------------------------- |
| `add_numbers_in_files.sh`                  | To add numbers stored in multiple files and display the sum                |
| `append_file_contents_in_directory.sh`     | To read files in a given directory and append contents                     |
| `arithmetic_operations.sh`                 | To perform arithmetic operations using expr and bc                         |
| `artifactory_cleanup.sh`                   | To clean up folders and files from artifactory                             |
| `banner.sh`                                | To display the input text as a large banner                                |  
| `case_block.sh`                            | To demonstrate the usage of case statement                                 |
| `case_block_advanced.sh`                   | To demonstrate the advanced usage of case statement                        |
| `cf_login.sh`                              | Single script to switch between several cloud accounts                     |
| `check_file_directory_existence.sh`        | To check if file/directory exists and display its size/contents            |
| `check_file_permission_and_append.sh`      | To check if the user has write permission to file and append contents      |
| `check_user_login.sh`                      | To check if a user logged in and display the time he took to login         |
| `containers_monitor.sh`                    | To monitor status of multiple docker containers in a single terminal       |
| `count_lines_and_words.sh`                 | To display count of lines and words in a given file                        |
| `count_of_file_and_folders.sh`             | To display count of files and folders                                      |
| `deployment_verification.sh`               | Adds a sample jsp - useful in validating if deployment is successful       |
| `custom_functions.sh`                      | Contains the blocks of code written as functions so they can be re-used    |
| `if_then_else.sh`                          | To demonstrate if-then-else                                                |
| `logical_operations.sh`                    | To perform logical operations                                              |
| `loops.sh`                                 | To demonstrate the usage of different kind of loops                        |
| `play_with_text_formatting.sh`             | To demonstrate different ways to print the text                            |
| `pretty_print_file.sh`                     | To read contents from file and append line numbers                         |
| `read_user_info_from_etc_passwd_file.sh`   | To check and display user info from the /etc/passwd file                   |
| `run_on_all_nodes.sh`                      | To run a single commands on several nodes in a shot                        |
| `set_proxy.sh`                             | Script to set http proxy                                                   |
| `show_jenkins_build_info.sh`               | To retrieve build information from jenkins                                 |
| `sleep.sh`                                 | To demonstrate the usage of sleep command                                  |
| `string_operations.sh`                     | To perform operations on strings                                           |
| `tput.sh`                                  | To use tput to play around on the terminal                                 |

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

4. **write** To send messages to other users on the system
```sh
write <user_name>
```
The recipient user must be logged in and should have enabled **mesg** messages feature enabled by using
```sh
mesg y/n
```
The sender can also check if the user has enabled **mesg** by typing **finger** command, any user disabled **mesg** feature will be shown as asterisk (\*) during the finger command.
The sender should fire *Ctrl + D* command to end/finish the message.

5. **Custom Functions** To store blocks of re-useable code that will be stored in memory and re-used later. Refer to *custom_functions.sh*
Assume I have two functions *goodmorning()* and *goodbye()* in the *custom_functions.sh*
First, you have to store them in memory by invoking
```sh
chmod +x functions.sh && . functions.sh
```
Then you can call those two functions from the shell prompt directly by typing
```sh
goodmorning
goodbye
```
To remove the function from memory, you may type the below command.
```sh
unset <function_name>
```
