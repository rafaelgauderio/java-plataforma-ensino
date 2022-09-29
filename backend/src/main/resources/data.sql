INSERT INTO tb_user (name, email, password) VALUES ('Student Claudia', 'claudia@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Teacher João', 'joao@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Rafael de Luca', 'deluca1712@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

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