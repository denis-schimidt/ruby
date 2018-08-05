require "#{File.expand_path('lib/class_room')}"
require "#{File.expand_path('lib/student')}"

describe ClassRoom do
  it 'the list_student_names method should work correctly' do
    student1 = double('student')
    student2 = double('student')

    allow(student1).to receive(:name) { 'John Smith'}
    allow(student2).to receive(:name) { 'Jill Smith'}

    cr = ClassRoom.new [student1,student2]
    expect(cr.list_student_names).to eq('John Smith,Jill Smith')
  end

  it 'should return average of student\'s age' do
    student1 = double('student 1')
    student2 = double('student 2')

    allow(student1).to receive(:age) {20}
    allow(student2).to receive(:age) {30}

    cr = ClassRoom.new [student1,student2]
    expect(cr.average_student_age).to eq(25)
  end

  it 'should return average usinf real student object' do
    student1 = Student.new('John Smith', 20)
    student2 = Student.new('Jill Smith', 30)

    #allow(student1).to receive(:age) {20}
    #allow(student2).to receive(:age) {30}

    cr = ClassRoom.new [student1,student2]
    expect(cr.average_student_age).to eq(25)
  end
end
