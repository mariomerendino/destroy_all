# Clean up all terminal processes!

### Steps
1. Add the ruby script to your home directory.
2. add the following function to your bash profile:
```
function destroy_all {
   ruby ~/destroy_all.rb $$
}
```
3. Once this is added, from your terminal run: `destroy_all`

This script will kill all terminal processes running with the exception of the terminal window that the script is being run from.
