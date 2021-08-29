--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7
-- Dumped by pg_dump version 13.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bkstudent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkstudent (
    id integer NOT NULL,
    name text,
    faculty text,
    year integer,
    level text
);


ALTER TABLE public.bkstudent OWNER TO postgres;

--
-- Name: student_submit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_submit (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.student_submit OWNER TO postgres;

--
-- Name: student_submit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_submit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_submit_id_seq OWNER TO postgres;

--
-- Name: student_submit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_submit_id_seq OWNED BY public.student_submit.id;


--
-- Name: submit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.submit (
    id integer NOT NULL,
    fullname character varying(255),
    phone character varying(255),
    email character varying(255)
);


ALTER TABLE public.submit OWNER TO postgres;

--
-- Name: submit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.submit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submit_id_seq OWNER TO postgres;

--
-- Name: submit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.submit_id_seq OWNED BY public.submit.id;


--
-- Name: student_submit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_submit ALTER COLUMN id SET DEFAULT nextval('public.student_submit_id_seq'::regclass);


--
-- Name: submit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submit ALTER COLUMN id SET DEFAULT nextval('public.submit_id_seq'::regclass);


--
-- Data for Name: bkstudent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bkstudent (id, name, faculty, year, level) FROM stdin;
1414633	Nguyễn Thị Tường Vi	Khoa Khoa học Ứng dụng	2017	Trường
1412909	Cao Thành Phú	Khoa Khoa học Ứng dụng	2017	Trường
1410609	Phan Tấn Duy	Khoa Kỹ thuật Địa chất và Dầu khí	2017	Trường
1412101	Phan Thăng Long	Khoa Kỹ thuật Địa chất và Dầu khí	2017	Trường
1412705	Lê Nguyễn Phước Nhi	Khoa Kỹ thuật Địa chất và Dầu khí	2017	Trường
1410393	Nguyễn Văn Chung	Khoa Kỹ thuật Hóa học	2017	Trường
1410565	Lê Hoàng Bảo Duy	Khoa Kỹ thuật Hóa học	2017	Trường
1412288	Nguyễn Lê Nhật Minh	Khoa Kỹ thuật Hóa học	2017	Trường
1413219	Hồ Như Quỳnh	Khoa Kỹ thuật Hóa học	2017	Trường
61302584	Nguyễn Thị Hồng Ngọc	Khoa Kỹ thuật Hóa học	2017	Trường
81301412	Đặng Văn Hợi	Khoa Kỹ thuật Xây dựng	2017	Trường
1412434	Võ Minh Nghi	Khoa Kỹ thuật Xây dựng	2017	Trường
1412982	Trịnh Hoàng Phúc	Khoa Môi trường và Tài nguyên	2017	Trường
91303246	Trần Để Quí	Khoa Môi trường và Tài nguyên	2017	Trường
91304044	Trương Anh Thụy	Khoa Môi trường và Tài nguyên	2017	Trường
91304235	Nguyễn Thị Thuỳ Trang	Khoa Môi trường và Tài nguyên	2017	Trường
1412051	Trương Thị Mỹ Linh	Khoa Môi trường và Tài nguyên	2017	Trường
91302909	Trần Tấn Phát	Khoa Môi trường và Tài nguyên	2017	Trường
91300544	Phan Thị Dung	Khoa Môi trường và Tài nguyên	2017	Trường
91302851	Đoàn Thị Ninh	Khoa Môi trường và Tài nguyên	2017	Trường
1411401	Trần Tử Huân	Khoa Quản lý Công nghiệp	2017	Trường
1600224	Đỗ Phước Thiện	Trung tâm Đào tạo Bảo dưỡng Công nghiệp	2017	Trường
1500139	Trần Quân Đạt	Trung tâm Đào tạo Bảo dưỡng Công nghiệp	2017	Trường
1500178	Nguyễn Quang Minh Lượng	Trung tâm Đào tạo Bảo dưỡng Công nghiệp	2017	Trường
1500221	Nguyễn Thị Diễm Thúy	Trung tâm Đào tạo Bảo dưỡng Công nghiệp	2017	Trường
1413327	Phạm Huỳnh Sơn	Văn phòng Đào tạo Quốc tế	2017	Trường
1552320	Nguyễn Phát Tài	Văn phòng Đào tạo Quốc tế	2017	Trường
1410646	Bùi Thị Ngọc Duyên	Khoa Kỹ thuật Hóa học	2018	Trường
1414126	Ngô Lương Thanh Trà	Khoa Cơ khí	2018	Trường
1450302	Nguyễn Như Thụy	Văn phòng Đào tạo Quốc tế	2018	Trường
1450385	Bùi Hồng Thiên Nhật	Văn phòng Đào tạo Quốc tế	2018	Trường
1510070	Nguyễn Phúc Anh	Khoa Kỹ thuật Hóa học	2018	Trường
1510205	Phạm Thị Thanh Bạch	Khoa Kỹ thuật Xây dựng	2018	Trường
1510438	Chung Từ Minh Duy	Khoa Kỹ thuật Hóa học	2018	Trường
1510593	Lê Phú Dương	Khoa Khoa học Ứng dụng	2018	Trường
1510713	Thái Tiến Đạt	Khoa Công nghệ Vật liệu	2018	Trường
1510785	Lê Huỳnh Đức	Khoa Kỹ thuật Hóa học	2018	Trường
1510807	Nguyễn Văn Đức	Khoa Khoa học và Kỹ thuật Máy tính	2018	Trường
1511050	Phan Đức Hiền	Khoa Cơ khí	2018	Trường
1511063	Phạm Trương Thị Lệ Hiểu	Khoa Kỹ thuật Xây dựng	2018	Trường
1511321	Nguyễn Thị Khánh Huyền	Khoa Kỹ thuật Địa chất và Dầu khí	2018	Trường
1511596	Nguyễn Trọng Khoa	Khoa Công nghệ Vật liệu	2018	Trường
1511856	Nguyễn Trương Văn Lộc	Khoa Kỹ thuật Xây dựng	2018	Trường
1512019	Trần Công Minh	Khoa Kỹ thuật Xây dựng	2018	Trường
1512049	Phạm Thị Ngọc Mỹ	Khoa Khoa học và Kỹ thuật Máy tính	2018	Trường
1512411	Phan Thành Phát	Khoa Kỹ thuật Xây dựng	2018	Trường
1512444	Nguyễn Duy Phong	Khoa Kỹ thuật Xây dựng	2018	Trường
1512532	Nguyễn Thái Thiện Phúc	Khoa Kỹ thuật Hóa học	2018	Trường
1512596	Nguyễn Thị Liên Phương	Khoa Cơ khí	2018	Trường
1512684	Nguyễn Ngọc Hoàng Quân	Khoa Kỹ thuật Xây dựng	2018	Trường
1512686	Nguyễn Triều Hoàng Quân	Khoa Công nghệ Vật liệu	2018	Trường
1512886	Nguyễn Đình Tài	Khoa Kỹ thuật Xây dựng	2018	Trường
1512946	Lê Nhật Tân	Khoa Khoa học Ứng dụng	2018	Trường
1512961	Nguyễn Thanh Tân	Khoa Kỹ thuật Xây dựng	2018	Trường
1512990	Lê Duy Thanh	Khoa Khoa học và Kỹ thuật Máy tính	2018	Trường
1513005	Nguyễn Trang Thanh	Khoa Kỹ thuật Hóa học	2018	Trường
1513023	Lê Tấn Thái	Khoa Khoa học Ứng dụng	2018	Trường
1513282	Lê Thị Thọ	Khoa Cơ khí	2018	Trường
1513327	Thi Công Thuấn	Khoa Cơ khí	2018	Trường
1513385	Phan Huỳnh Anh Thư	Khoa Kỹ thuật Xây dựng	2018	Trường
1513632	Huỳnh Ngọc Diễm Trinh	Khoa Kỹ thuật Hóa học	2018	Trường
1513649	Đặng Minh Trí	Khoa Khoa học và Kỹ thuật Máy tính	2018	Trường
1513745	Quang Minh Trung	Khoa Cơ khí	2018	Trường
1513835	Nguyễn Hoàng Tuấn	Khoa Công nghệ Vật liệu	2018	Trường
1513932	Nguyễn Thị Cẩm Tú	Khoa Kỹ thuật Xây dựng	2018	Trường
1552108	Nguyễn Ngân Hà	Văn phòng Đào tạo Quốc tế	2018	Trường
1610640	Lê Thị Hồng Đạt	Khoa Cơ khí	2018	Trường
1611046	Phạm Minh Hiếu	Khoa Khoa học và Kỹ thuật Máy tính	2018	Trường
1611057	Trần Nguyễn Thu Hiếu	Khoa Cơ khí	2018	Trường
1611225	Lê Huân	Khoa Khoa học và Kỹ thuật Máy tính	2018	Trường
1611244	Đường Quang Huy	Khoa Khoa học và Kỹ thuật Máy tính	2018	Trường
1611318	Phạm Đức Huy	Khoa Cơ khí	2018	Trường
1611357	Võ Thị Kim Huy	Khoa Cơ khí	2018	Trường
1611418	Trần Mạnh Hùng	Khoa Kỹ thuật Xây dựng	2018	Trường
1611471	Trần Diễm Hương	Khoa Quản lý Công nghiệp	2018	Trường
1611623	Nguyễn Lê Anh Khoa	Khoa Cơ khí	2018	Trường
1612005	Đặng Nguyễn Ngọc Minh	Khoa Cơ khí	2018	Trường
1612163	Lý Thị Xuân Ngân	Khoa Cơ khí	2018	Trường
1612729	Hoàng Ngọc Phước	Khoa Kỹ thuật Xây dựng	2018	Trường
1612839	Trương Đại Phú Quí	Khoa Kỹ thuật Xây dựng	2018	Trường
1612870	Võ Thị Kiều Quyên	Khoa Cơ khí	2018	Trường
1612911	Trần Ngọc Quỳnh	Khoa Cơ khí	2018	Trường
1613690	Nguyễn Võ Thái Triều	Khoa Cơ khí	2018	Trường
1613794	Nguyễn Anh Trung	Khoa Cơ khí	2018	Trường
1613896	Nguyễn Duy Tuấn	Khoa Kỹ thuật Xây dựng	2018	Trường
1614051	Thái Thu Uyên	Khoa Cơ khí	2018	Trường
1710171	Bành Vũ Long	Khoa Kỹ thuật Hóa học	2018	Trường
1710252	Hồ Văn Phước	Khoa Kỹ thuật Hóa học	2018	Trường
1710276	Dương Đức Tâm	Khoa Kỹ thuật Hóa học	2018	Trường
1710927	Nguyễn Trọng Đại	Khoa Kỹ thuật Xây dựng	2018	Trường
1710332	Dương Đức Tín	Khoa Khoa học và Kỹ thuật Máy tính	2018	Đại học Quốc gia
1710709	Dương Chí Cường	Khoa Kỹ thuật Hóa học	2018	Đại học Quốc gia
1712961	Bùi Ngọc Thanh Sơn	Khoa Khoa học và Kỹ thuật Máy tính	2018	Đại học Quốc gia
1710434	Nguyễn Thị Thanh An	Khoa Quản lý Công nghiệp	2019	Trường
1552125	Trà Nhật Hiển	Văn phòng Đào tạo Quốc tế	2019	Trường
1652696	Lương Ngọc Tường Vi	Văn phòng Đào tạo Quốc tế	2019	Trường
1552193	Lâm Hồng Lẹ	Văn phòng Đào tạo Quốc tế	2019	Trường
1852059	Đồng Vũ Nhật Nguyên	Văn phòng Đào tạo Quốc tế	2019	Trường
1551084	Tô Ngọc Lương	Văn phòng Đào tạo Quốc tế	2019	Trường
1611604	Lê Chí Văn Khoa	Khoa Khoa học Ứng dụng	2019	Trường
1814270	Mai Anh Thư	Khoa Khoa học Ứng dụng	2019	Trường
1610956	Lê Thị Thúy Hằng	Khoa Khoa học và Kỹ thuật Máy tính	2019	Trường
1610372	Nguyễn Quốc Cường	Khoa Khoa học và Kỹ thuật Máy tính	2019	Trường
1610172	Nguyễn Gia Bảo	Khoa Khoa học và Kỹ thuật Máy tính	2019	Trường
1614246	Nguyễn Thị Như Ý	Khoa Khoa học và Kỹ thuật Máy tính	2019	Trường
1612541	Trần Trương Tấn Phát	Khoa Khoa học và Kỹ thuật Máy tính	2019	Trường
1612377	Bùi Anh Nhật	Khoa Khoa học và Kỹ thuật Máy tính	2019	Trường
1611096	Phạm Minh Hiếu	Khoa Khoa học và Kỹ thuật Máy tính	2019	Trường
1613069	Phạm Trần Thanh Tâm	Khoa Cơ khí	2019	Trường
1710719	Nguyễn Đức Cường	Khoa Cơ khí	2019	Trường
1710457	Đỗ Nguyễn Đăng Anh	Khoa Cơ khí	2019	Trường
1714065	Nguyễn Văn Triệu Vỹ	Khoa Cơ khí	2019	Trường
1610669	Ôn Từ Quốc Đạt	Khoa Cơ khí	2019	Trường
1614191	Đồng Khả Vy	Khoa Cơ khí	2019	Trường
1710044	Phạm Hoàng Minh Duy	Khoa Cơ khí	2019	Trường
1610320	Hà Việt Chương	Khoa Cơ khí	2019	Trường
1611841	Võ Phương Linh	Khoa Cơ khí	2019	Trường
1713094	Đặng Nguyễn Phương Thanh	Khoa Cơ khí	2019	Trường
1710038	Đỗ Trung Duy	Khoa Cơ khí	2019	Trường
1612889	Trương Đại Phú Quí	Khoa Kỹ thuật Xây dựng	2019	Trường
1610697	Nguyễn Tiến Đăng	Khoa Kỹ thuật Xây dựng	2019	Trường
1714084	Nguyễn Như Ý	Khoa Kỹ thuật Xây dựng	2019	Trường
1611016	Lê Phước Hiếu	Khoa Kỹ thuật Xây dựng	2019	Trường
1611408	Nguyễn Phi Hùng	Khoa Kỹ thuật Xây dựng	2019	Trường
1613635	Nguyễn Văn Trang	Khoa Kỹ thuật Xây dựng	2019	Trường
1510620	Tô Phan Chiêu Đan	Khoa Kỹ thuật Hóa học	2019	Trường
1610387	Võ Chí Cường	Khoa Kỹ thuật Hóa học	2019	Trường
1610447	Hồ Hữu Bảo Duy	Khoa Kỹ thuật Hóa học	2019	Trường
1610823	Ngô Huỳnh Bình Giang	Khoa Kỹ thuật Hóa học	2019	Trường
1611752	Phú Mỹ Lâm	Khoa Kỹ thuật Hóa học	2019	Trường
1611817	Nguyễn Thị Kim Linh	Khoa Kỹ thuật Hóa học	2019	Trường
1611821	Nguyễn Thùy Linh	Khoa Kỹ thuật Hóa học	2019	Trường
1611889	Bùi Tấn Lộc	Khoa Kỹ thuật Hóa học	2019	Trường
1612155	Đinh Thị Thanh Ngân	Khoa Kỹ thuật Hóa học	2019	Trường
1612364	Nguyễn Vũ Đức Nhân	Khoa Kỹ thuật Hóa học	2019	Trường
1612488	Trần Thị Kim Nở	Khoa Kỹ thuật Hóa học	2019	Trường
1612639	Nguyễn Trần Thiên Phúc	Khoa Kỹ thuật Hóa học	2019	Trường
1613157	Tô Trần Minh Thái	Khoa Kỹ thuật Hóa học	2019	Trường
1613225	Tạ Thị Thảo	Khoa Kỹ thuật Hóa học	2019	Trường
1613656	Nguyễn Phạm Quỳnh Trâm	Khoa Kỹ thuật Hóa học	2019	Trường
1614110	Đặng Cẩm Vinh	Khoa Kỹ thuật Hóa học	2019	Trường
1614230	Nguyễn Kim Xuyến	Khoa Kỹ thuật Hóa học	2019	Trường
1611037	Nguyễn Thị Minh Hiếu	Khoa Kỹ thuật Hóa học	2019	Trường
1712332	Phạm Quốc Nghĩa	Khoa Kỹ thuật Hóa học	2019	Trường
1711824	Vũ Hoàng Khôi	Khoa Kỹ thuật Hóa học	2019	Trường
1712568	Nguyễn Hoàng Phát	Khoa Quản lý Công nghiệp	2020	Trường
1713879	Huỳnh Khánh Tường	Khoa Công nghệ vật liệu	2020	Trường
1710969	Nguyễn Thành Đạt	Khoa Công nghệ vật liệu	2020	Trường
1714086	Thái Thị Như Ý	Khoa Cơ khí	2020	Trường
1710338	Nguyễn Ngọc Trang	Khoa Cơ khí	2020	Trường
1910453	Lê Thành Phúc	Khoa Cơ khí	2020	Trường
1710156	Huỳnh Quốc Kiệt	Khoa Điện - Điện tử	2020	Trường
1712447	Tạ Hữu Nhân	Khoa Điện - Điện tử	2020	Trường
1814031	Thái Nguyễn Trung Thành	Khoa Điện - Điện tử	2020	Trường
1814215	Nguyễn Thị Mỹ Thu	Khoa Điện - Điện tử	2020	Trường
1610179	Nguyễn Lê Chí Bảo	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1611160	Nguyễn Ngọc Hoàng	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1710094	Hồ Minh Hoàng	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1710539	Tạ Ngọc Ánh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1710721	Nguyễn Lê Quốc Cường	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1711020	Chung Minh Đệ	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1711505	Nguyễn Đăng Huy	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1711265	Võ Xuân Hậu	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1711547	Nguyễn Xuân Huy	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1710169	Nguyễn Văn Hoài Linh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1711947	Hy Phạm Ngọc Linh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1712025	Nguyễn Việt Long	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1712393	Phạm Nguyễn Xuân Nguyên	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1713148	Lê Nhật Thành	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810004	Nguyễn Thúy An	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810681	Nguyễn Thị An	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810014	Ngô Quang Anh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810814	Phạm Đức Duy Anh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1811442	Phan Lê Tuấn Anh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1811568	Lê Đỗ Thanh Bình	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1811669	Vũ Thành Danh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810867	Nguyễn Đỗ Quốc Duy	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812004	Phạm Trường Giang	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812228	Trương Minh Hiệp	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812164	Lê Ngọc Hiếu	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810198	Tô Duy Hưng	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810173	Nguyễn Gia Huy	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812612	Huỳnh Đình Quang Khải	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812535	Hoàng Gia Khang	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812536	Lâm Duy Khang	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812563	Trần Quốc Khang	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810730	Lê Thành Lâm	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812778	Phạm Quang Lâm	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812869	Hồ Thiên Long	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1812951	Võ Minh Long	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1811083	Nguyễn Trần Quang Minh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810340	Võ Hoàng Hải Nam	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810388	Nguyễn Thành Nhân	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1813330	Nguyễn Hồng Nhân	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1813367	Nguyễn Long Nhật	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1813636	Đoàn Trần Hữu Phước	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810481	Lê Thành Sơn	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1814205	Nguyễn Phi Thông	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1814259	Trần Đình Vĩnh Thụy	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810578	Nguyễn Bá Tiến	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1814355	Hoàng Vũ Tĩnh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1811304	Đỗ Lê Quang Trung	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1814579	Phan Văn Trường	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1814710	Trần Khánh Tùng	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810657	Trần Hoàng Việt	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1814771	Nguyễn Hoàng Việt	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1811578	Phạm Quang Bình	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1810109	Lê Khắc Minh Đăng	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1813381	Thái Văn Nhật	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1914704	Nguyễn Trọng Phúc	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1913396	Nguyễn Thế Hiệp	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1913433	Nguyễn Cảnh Hoàng	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1913832	Lê Đức Khoan	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1914738	Lê Thanh Phương	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1915982	Nguyễn Văn Xuân Vũ	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1912700	Ngô Thị Hà Bắc	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1915540	Lâm Thiện Toàn	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1912749	Nguyễn Khoa Gia Cát	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1913467	Hồ Văn Hòa	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1915121	Trần Văn Thái	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1910735	Thái Khắc Đức An	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1912237	Trần Hoàng Công Toại	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1910663	Quách Minh Tuấn	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1911262	Trần Quang Huy	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1911841	Nguyễn Trung Phong	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1910101	Ngô Lê Quốc Dũng	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1910351	Đặng Nguyễn Xuân Nam	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1910402	Lê Ngọc Minh Nhân	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1910563	Huỳnh Đức Thịnh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1910565	Nguyễn Phúc Thịnh	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1911868	Nguyễn Hoàng Phúc	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1912046	Ngô Minh Hồng Thái	Khoa Khoa học và Kỹ thuật Máy tính	2020	Trường
1713614	Trần Ngọc Triệu	Khoa Khoa học Ứng dụng	2020	Trường
1710220	Đào Thị Phương Nhung	Khoa Khoa học Ứng dụng	2020	Trường
1713459	Lê Phương Mai Thy	Khoa Khoa học Ứng dụng	2020	Trường
1710382	Phạm Nguyễn Tường Vân	Khoa Khoa học Ứng dụng	2020	Trường
1613461	Hàng Thị Minh Thư	Khoa Khoa học Ứng dụng	2020	Trường
1713767	Trương Minh Trực	Khoa Kỹ thuật Giao thông	2020	Trường
1710160	Trần Tuấn Kiệt	Khoa Kỹ thuật Giao thông	2020	Trường
1652534	Nguyễn Hoài Tân	Văn phòng Đào tạo Quốc tế	2020	Trường
1710374	Nguyễn Thị Cẩm Tú	Văn phòng Đào tạo Quốc tế	2020	Trường
1852511	Võ Ngọc Khánh Linh	Văn phòng Đào tạo Quốc tế	2020	Trường
1852035	Trần Lâm Bảo Khang	Văn phòng Đào tạo Quốc tế	2020	Trường
1852505	Xỉn Ngọc Liên	Văn phòng Đào tạo Quốc tế	2020	Trường
1952079	Nguyễn Luật Gia Khôi	Văn phòng Đào tạo Quốc tế	2020	Trường
1952610	Trần Ngọc Minh Diệp	Văn phòng Đào tạo Quốc tế	2020	Trường
1952056	Phạm Bùi Minh Huân	Văn phòng Đào tạo Quốc tế	2020	Trường
1710387	Trần Quốc Việt	Khoa Kỹ thuật Xây dựng	2020	Trường
\.


--
-- Data for Name: student_submit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_submit (id, name) FROM stdin;
2	Tran Van Thai
3	Doan Tran Huu Phuoc
4	Huy
\.


--
-- Data for Name: submit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.submit (id, fullname, phone, email) FROM stdin;
1	Tran Quang Huy	0898871097	none@gmail.com
\.


--
-- Name: student_submit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_submit_id_seq', 4, true);


--
-- Name: submit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.submit_id_seq', 1, true);


--
-- Name: bkstudent bkstudent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bkstudent
    ADD CONSTRAINT bkstudent_pkey PRIMARY KEY (id);


--
-- Name: student_submit student_submit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_submit
    ADD CONSTRAINT student_submit_pkey PRIMARY KEY (id);


--
-- Name: submit submit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submit
    ADD CONSTRAINT submit_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

