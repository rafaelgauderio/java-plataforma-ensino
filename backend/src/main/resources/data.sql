INSERT INTO tb_user (name, email, password) VALUES ('Student Claudia', 'claudia@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Student Marcela', 'marcela@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Teacher João', 'joao@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Rafael de Luca', 'deluca1712@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (4, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (4, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (4, 3);

INSERT INTO tb_course(name, img_Uri, img_Gray_Uri)
VALUES ('Java Course','https://4.bp.blogspot.com/-sBW9DpZ-x24/Vwb3_trq1YI/AAAAAAAARWU/wr9VZvFDaU8DnOV9VcE-wu0aQDolOj28Q/s1600/BANNER.jpg','https://www.anossaescola.com/wp-content/uploads/2018/04/CAPA-DO-CURSO-DE-JAVA.jpg');
INSERT INTO tb_course(name, img_Uri, img_Gray_Uri)
VALUES ('PHP Course','https://setuscursos.com.br/storage/app/thumbnails/550_x_350/course-covers/3b200b31-745a-4999-9428-f4ef031f6afa/php.png','https://api.apostilando.com/upload/1/apostila/3431');

INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id)
VALUES (1.0, TIMESTAMP WITH TIME ZONE '2022-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-12-20T03:00:00Z',1);
INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id)
VALUES (3.0, TIMESTAMP WITH TIME ZONE '2023-12-20T04:00:00Z', TIMESTAMP WITH TIME ZONE '2024-12-20T04:00:00Z',1);
INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id)
VALUES (1.0, TIMESTAMP WITH TIME ZONE '2022-10-20T04:00:00Z', TIMESTAMP WITH TIME ZONE '2023-10-20T04:00:00Z',2);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id )
VALUES ('Trilha','Aulas gravadas',1,'https://educacaocientifica.com/educacao/wp-content/uploads/2019/01/videoaula.jpg',0,1);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id )
VALUES ('Manuais','Tutoriais em texto',2,'https://educacaocientifica.com/educacao/wp-content/uploads/2019/01/videoaula.jpg',1,1);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id )
VALUES ('Fórum','Tire suas dúvidas',3,'https://educacaocientifica.com/educacao/wp-content/uploads/2019/01/videoaula.jpg',2,1);

INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id)
VALUES ('Capítulo 1','Introducação ao Java', 1, 'https://educacaocientifica.com/educacao/wp-content/uploads/2019/01/videoaula.jpg',1, null);  
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id)
VALUES ('Capítulo 2','Orientação a Objetos com java', 2, 'https://educacaocientifica.com/educacao/wp-content/uploads/2019/01/videoaula.jpg',1, 1);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id)
VALUES ('Capítulo 3','Métodos Construtores', 3, 'https://educacaocientifica.com/educacao/wp-content/uploads/2019/01/videoaula.jpg',1,2);  
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id)
VALUES ('Capítulo 4','Métodos getters and Setters', 4, 'https://educacaocientifica.com/educacao/wp-content/uploads/2019/01/videoaula.jpg',1,3);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) 
VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-11-20T16:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update)
VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-11-20T17:00:00Z', null, true, false);  

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1',1,1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1,'Material de apoio de java aula 1','https://www.youtube.com/watch?v=sTX0UEplF54&list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1',2,1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2,'Material de apoio de java aula 2','https://www.youtube.com/watch?v=sTX0UEplF54&list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1',3,1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Material de apoio de java aula 3','https://www.youtube.com/watch?v=sTX0UEplF54&list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 4 do capítulo 1',4,1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (4, 'Material de apoio de java aula 4','https://www.youtube.com/watch?v=sTX0UEplF54&list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Exercício do Capítulo 1',5,1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (5, 'Responder ao questionário sobre Java',10,7,1.0,TIMESTAMP WITH TIME ZONE '2022-12-25T16:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);


