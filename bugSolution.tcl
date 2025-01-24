proc get_element {list index} { 
    if {$index < 0 || $index >= [llength $list]} { 
        return -code error "Index out of range" 
    } 
    return [lindex $list $index] 
} 

# Example usage 
set mylist {a b c d e} 
puts [get_element $mylist 2]  ;# Output: c
puts [catch {get_element $mylist 5} result] ;# Output: 1
puts $result ;# Output: Index out of range