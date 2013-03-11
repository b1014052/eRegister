package uk.ac.shu.webarch.eregister

class Student {
String fullStudentName
String studentNumber

Set enrolledClasses

static hasMany = [enrolledClasses: RegisterEntry]

static mappedBy = [enrolledClasses: 'studentEnrolled']


    static constraints = {
fullStudentName(nullable:false, blank:false,maxsize:256);
studentNumber(nullable:false, blank:false,maxsize:20);
    }
}
