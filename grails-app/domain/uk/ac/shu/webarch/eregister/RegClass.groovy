package uk.ac.shu.webarch.eregister

class RegClass {

String name

Instructor classInstructor
Course course

Set studentEnrolled

static hasMany = [studentEnrolled: Enrollment]

static mappedBy = [studentEnrolled: 'classes']

    static constraints = {

name(nullable:false, blank:false,maxsize:256);
}
static mapping = {
classInstructor column 'instructor_fk'
course column 'Course_fk'

    
}
}
