package uk.ac.shu.webarch.eregister

class Course {

Set classes

static hasMany = [classes: RegClass]

static mappedBy = [classes: 'course']

    static constraints = {
    }
}
