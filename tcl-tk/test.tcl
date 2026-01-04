#!/usr/bin/env wish

# 1. Setup window
wm title . "Data Entry Form"
grid [label .header -text "Information Entry" -font {Helvetica 14 bold}] -columnspan 2 -pady 10

# 2. Integer Field
label .lblInt -text "Enter Integer:"
entry .entInt -textvariable intVal
grid .lblInt .entInt -padx 10 -pady 5 -sticky e
set intVal int_val

# 3. Floating Point Field
label .lblFloat -text "Enter Float:"
entry .entFloat -textvariable floatVal
grid .lblFloat .entFloat -padx 10 -pady 5 -sticky e

# 4. Radio Buttons
label .lblRadio -text "Select Option:"
frame .fRadio
# Use 'pack' here to put buttons side-by-side inside the frame
radiobutton .fRadio.r1 -text "Option A" -variable choice -value "A"
radiobutton .fRadio.r2 -text "Option B" -variable choice -value "B"
pack .fRadio.r1 .fRadio.r2 -side left

# Now 'grid' the entire frame into the main window
grid .lblRadio .fRadio -padx 10 -pady 5 -sticky e

# 5. Submit Button
button .btnSubmit -text "Submit" -command {
    puts "Integer: $intVal"
    puts "Float: $floatVal"
    puts "Selection: $choice"
}
grid .btnSubmit -columnspan 2 -pady 20
