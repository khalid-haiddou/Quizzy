Create database quizz ; 

Create table users (
    user_id int auto_increment Primary key ,
    user_name varchar(50),
    user_email varchar(50),
    user_password varchar(255);
    user_role boolean 
)

Create table courses (
    course_id int auto_increment Primary key , 
    coure_title varchar(50),
    course_description varchar(25000)
)

Create table course_progress(
    progress_index  int ,
    course_id int ,
    user_id int ,
    Primary key (course_id , user_id),
    Constraint Course_progress_course_id foreign key (course_id)  references courses(course_id) on delete cascade on update cascade ,
    Constraint Course_progress_user_id foreign key (user_id)  references users(users_id) on delete cascade on update cascade
)

Create table quizz (
    quizz_id int auto_increment primary key ,
    quizz_title varchar(50),
    course_id int ,
    Constraint quizz_course_id foreign key (course_id)  references courses(course_id) on delete cascade on update cascade
)

create table quizz_progress (
    quizz_progress int auto_increment Primary key,
    quizz_score int ,
    quizz_correct_answers int , 
    quizz_date date , 
    quizz_id int , 
    Constraint quizz_quizz_id foreign key (quizz_id)  references quizz(quizz_id) on delete cascade on update cascade
)

create table question (
    question_id int auto_increment Primary key,
    question_content varchar(500),
    quizz_id int ,
    Constraint question_quizz_id foreign key (quizz_id)  references quizz(quizz_id) on delete cascade on update cascade
)

create table answers (
    answer_id int auto_increment Primary key,
    answer_content varchar(255),
    answer_is_correct boolean,
    question_id int , 
    Constraint answer_question_id foreign key (question_id)  references quizz_question(question_id) on delete cascade on update cascade
)
