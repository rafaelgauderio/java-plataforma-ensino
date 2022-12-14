INSERT INTO tb_user (name, email, password) VALUES ('Student Claudia', 'claudia@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Student Marcela', 'marcela@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Teacher João', 'joao@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Administrator Rafael de Luca', 'deluca1712@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

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

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar a classe User', TIMESTAMP WITH TIME ZONE '2022-12-24T16:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback da tarefa: favor alterar a versão do spring no arquivo pow', TIMESTAMP WITH TIME ZONE '2020-12-25T17:00:00Z', false, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Parabéns. Código compilado sem erros', TIMESTAMP WITH TIME ZONE '2020-12-25T19:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Revise todo o seu código. Ele contém vários erros,', TIMESTAMP WITH TIME ZONE '2020-12-29T19:00:00Z', true, '/offers/2/resource/1/sections/1', 2);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) 
VALUES ('https://github.com/rafaelgauderio/java-plataforma-ensino',TIMESTAMP WITH TIME ZONE '2022-11-10T17:00:00Z',0,'Entrega sem feedBack ainda, pois está pendente', null,5,1,1);


INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Conteúdo do tópico 1', TIMESTAMP WITH TIME ZONE '2022-12-12T14:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Conteúdo do tópico 2', TIMESTAMP WITH TIME ZONE '2022-11-13T14:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Conteúdo do tópico 3', TIMESTAMP WITH TIME ZONE '2022-11-14T14:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Conteúdo do tópico 4', TIMESTAMP WITH TIME ZONE '2022-11-15T14:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Conteúdo do tópico 5', TIMESTAMP WITH TIME ZONE '2022-11-16T14:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Conteúdo do tópico 6', TIMESTAMP WITH TIME ZONE '2022-11-17T14:00:00Z', 2, 1, 3);

/*
O author não pode dar like em seu próprio topico
*/
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);


INSERT INTO tb_reply (body, moment, topic_id, author_id ) VALUES ('Tente mudar a versão do Java para 17', TIMESTAMP WITH TIME ZONE '2022-12-20T17:00:00Z',1,1);
INSERT INTO tb_reply (body, moment, topic_id, author_id ) VALUES ('Tente mudar a versão do Spring Boot para 2.4.4', TIMESTAMP WITH TIME ZONE '2022-12-21T17:00:00Z',1,1);
INSERT INTO tb_reply (body, moment, topic_id, author_id ) VALUES ('Valeu meu querido, agora compilou o código', TIMESTAMP WITH TIME ZONE '2022-12-23T17:00:00Z',1,2);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (2,2);

