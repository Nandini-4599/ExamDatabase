create database Exam
create table student(id int identity(1,1) primary key,email varchar(50),fullname varchar(60),password varchar(40),age int,gender varchar(30)
check (gender in('male','female')),city varchar(100),state varchar(100))

USE [Exam]
GO

/****** Object:  StoredProcedure [dbo].[proc_LoginCheck]    Script Date: 07-01-2021 00:11:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[proc_LoginCheck](@email varchar(50),@pass varchar(40))
as
begin
select email email, password password from student where email=@email and password=@pass
end
GO



-------------------------------------


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Question](
	[QnID] [int] IDENTITY(1,1) NOT NULL,
	[Qn] [varchar](250) NULL,
	[ImageName] [varchar](50) NULL,
	[Option1] [varchar](50) NULL,
	[Option2] [varchar](50) NULL,
	[Option3] [varchar](50) NULL,
	[Option4] [varchar](50) NULL,
	[Answer] [int] NULL,
	[exam_level] [int] NULL,
	[subject] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[QnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (1, N'What does HTML stand for?', NULL, N'Hyper Trainer Marking Language', N'Hyper Text Marketing Language', N'Hyper Text Markup Language', N'Hyper Text Markup Leveler', 2,1,'HTML')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (2, N'In Java, a method is a container that holds classes.', NULL, N'True', N'False', NULL, NULL, 1,1,'Java')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (3, N'Who invented the first computer ?', NULL, N'Charles Babbage', N'Linus Torvalds', N'Dennis Ritchie', N'James Gosling', 0,1,'Computer')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (4, N'Which of the following languages is more suited to a structured program?', NULL, N'FORTRAN', N'BASIC', N'PASCAL', N'PL/1', 2,1,'Computer')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (5, N'The brain of any computer system is', NULL, N'ALU', N'Memory', N'CPU', N'Control unit', 2,1,'Computer')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (18, N'Which of the following computer language is used for  intelligence?', NULL, N'FORTRAN', N'PROLOG', N'C', N'COBOL', 1,1,'Computer')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (20, N'Which of the following is the 1''s complement of 10?', NULL, N'01', N'110', N'11', N'10', 0,1,'Computer')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (8, N'The binary system uses powers of', NULL, N'2', N'10', N'8', N'16', 0,1,'Computer')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (9, N'A computer program that convert sassembly language to machine language is', NULL, N'Compiler', N'Interpreter', N'Assembler', N'Comparator', 2,1,'Computer')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (10, N'You can add a row using SQL in a database with which of the following?', NULL, N'ADD', N'CREATE', N'INSERT', N'MAKE', 2,1,'SQL')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (11, N'The SQL keyword(s)________ is used with wildcards.', NULL, N'LIKE only', N'IN only', N'NOT IN only', N'IN and NOT IN', 0,1,'SQL')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (12, N'SQL query and modification commands make up a(n)', NULL, N'DDL', N'DML', N'HTML', N'XML', 1,1,'SQL')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (13, N'Inside which HTML element do we put the JavaScript?', NULL, N'<javascript>', N'<js>', N'<scripting>', N'<script>', 3,1,'HTML')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (14, N'The external Java Script file must contain the <script> tag.', NULL, N'True', N'False', NULL, NULL, 1,1,'Javascript')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (15, N'How can you add a comment in a JavaScript?', NULL, N'''This is a comment', N'<!--This is a comment-->', N'//This is a comment', NULL, 2,1,'Javascript')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (16, N'Name the following device.', N'q16.jpg', N'Graphics card', N'Keyboard', N'CPU', N'Mouse', 3,1,'Computer')
GO
INSERT [dbo].[Question] ([QnID], [Qn], [ImageName], [Option1], [Option2], [Option3], [Option4], [Answer],[exam_level],[subject]) VALUES (18, N'Following picture represnts.', N'q17.png', N'Full Outer Join', N'Left Join', N'Right Join', N'Inner Join', 3,1,'SQL')
GO

select * from Question
-----------------------------

/****** Object:  StoredProcedure [dbo].[getValuesbySubject]    Script Date: 07-01-2021 09:04:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[getValuesbySubject]
(@exam_level int,@subject varchar(40))
as
begin
select TOP 10 QnID,Qn,ImageName,Option1,Option2,Option3,Option4 from Question where exam_level=@exam_level and subject=@subject order by NEWID()
end
GO


-------------------------------------




