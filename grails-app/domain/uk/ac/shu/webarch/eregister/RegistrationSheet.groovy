package uk.ac.shu.webarch.eregister

class RegistrationSheet {

String fullStudentName

RegisterEntry registerEntry
RegClass classes

Set studentsAttended

static hasMany = [studentsAttended: RegisterEntry]

static mappedBy = [studentsAttended: 'registrationSheet']

    static constraints = {
fullStudentName(nullable:false, blank:false,maxsize:256);
    }
}
