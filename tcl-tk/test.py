import tkinter as tk
import os

root = tk.Tk()

# Load the external Tcl file
# This runs the Tcl code inside Python's Tkinter instance
root.tk.call('source', 'test.tcl')

# To get data out, you just need the names of the Tcl variables 
# used in the 'textvariable' or 'variable' options of your Tcl code.
def sync():
    # If your Tcl code had: entry .e -textvariable userData
    data = root.tk.getvar("int_val")
    print(f"Python retrieved: {data}")

root.mainloop()
