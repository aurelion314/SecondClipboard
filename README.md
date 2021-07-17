# SecondClipboard
Gives you a second copy paste on new hotkeys.

Requires Autohotkey. Download here https://autohotkey.com/download/

Once you have Autohotkey, right click SecondClip.ahk and 'run script'. Now try copying with win+C and pasting with win+V. These bindings can be changed inside the script using autohotkey syntax. 

You can add macros to SecondClip.ahk. For example, imagine you have a common query with 2 variables. You can save 1 value to the regular clipboard, a second value to the second clipboard, then use a macro such as ctrl+1 to paste a query containing both clipboard values: 
Select * from users where account = <clipboard 1> and name = <clipboard 2>
