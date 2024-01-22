import 'package:flutter_application_1/data/model/student.dart';
import 'package:flutter_application_1/data/repository/student_repository.dart';
import 'package:get/get.dart';

class StudentController extends GetxController {
  var allStudent = <StudentModel>[].obs;

  StudentRepository studentRepository = StudentRepository();

  @override
  void onInit() {
    super.onInit();
    fetchAllStudent();
  }

  fetchAllStudent({String? query}) async {
    var student = await studentRepository.getData(query ?? '');
    allStudent.value = student;
  }

  addStudent(StudentModel studentModel) {
    studentRepository.addData(studentModel);
    fetchAllStudent();
  }

  updateStudent(StudentModel studentModel) {
    studentRepository.updateData(studentModel);
    fetchAllStudent();
  }

  deleteStudent(int id) {
    studentRepository.deleteData(id);
    fetchAllStudent();
  }
}
