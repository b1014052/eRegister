import uk.ac.shu.webarch.eregister.*;
class BootStrap {

    def init = { servletContext ->

println("Bootstrap::init");

def ian_instructor = Instructor.findByStaffId('12345') ?: new Instructor(staffId:'12345', name:'Ian Ibbotson').save();
def matthew_instructor = Instructor.findByStaffId('54321') ?: new Instructor(staffId:'54321', name:'Matthew Love').save();

def web_arch_course = Course.findByCourseCode('9876') ?: new Course (courseCode: '9876', courseName: 'Web Architectures', description: 'Really hard subject').save();

def programming_course = Course.findByCourseCode('76543') ?: new Course (courseCode: '76543', courseName: 'Programming', description: 'Involves lots of coding').save();


def new_class = RegClass.findByName('WebArch-Mondays') ?: new RegClass(name:'WebArch-Mondays',classInstructor:ian_instructor, course:web_arch_course).save();


def nicole_student = Student.findByStudentNumber('b1014052') ?: new Student(studentNumber:'b1014052', fullStudentName:'Nicole Cooper').save();

def elliot_student = Student.findByStudentNumber('b1010345') ?: new Student(studentNumber:'b1010345', fullStudentName:'Elliot Naylor').save();

def gary_student = Student.findByStudentNumber('b1017586') ?: new Student(studentNumber:'b1017586', fullStudentName:'Gary Barlow').save();

def robbie_student = Student.findByStudentNumber('b1011234') ?: new Student(studentNumber:'b1011234', fullStudentName:'Robbie Williams').save();

def mark_student = Student.findByStudentNumber('b1014657') ?: new Student(studentNumber:'b1014657', fullStudentName:'Mark Owen').save();

def jason_student = Student.findByStudentNumber('b1019876') ?: new Student(studentNumber:'b1019876', fullStudentName:'Jason Orange').save();

def howard_student = Student.findByStudentNumber('b1016890') ?: new Student(studentNumber:'b1016890', fullStudentName:'Howard Donald').save();

    }
    def destroy = {
    }
}
