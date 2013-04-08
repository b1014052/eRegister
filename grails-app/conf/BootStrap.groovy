import uk.ac.shu.webarch.eregister.*;
class BootStrap {

    def init = { servletContext ->

println("Bootstrap::init");

def ian_instructor = Instructor.findByStaffId('12345') ?: new Instructor(staffId:'12345', name:'Ian Ibbotson').save();
def matthew_instructor = Instructor.findByStaffId('54321') ?: new Instructor(staffId:'54321', name:'Matthew Love').save();

def web_arch_course = Course.findByCourseCode('9876') ?: new Course (courseCode: '9876', courseName: 'Web Architectures', description: 'Really hard subject').save();



    }
    def destroy = {
    }
}
