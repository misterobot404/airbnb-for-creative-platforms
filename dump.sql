/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.77.66 hackaton
 Source Server Type    : PostgreSQL
 Source Server Version : 140005
 Source Host           : 192.168.77.66:5432
 Source Catalog        : hackaton
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140005
 File Encoding         : 65001

 Date: 13/06/2023 14:11:33
*/


-- ----------------------------
-- Sequence structure for categories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."categories_id_seq";
CREATE SEQUENCE "public"."categories_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for deals_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."deals_id_seq";
CREATE SEQUENCE "public"."deals_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for failed_jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."failed_jobs_id_seq";
CREATE SEQUENCE "public"."failed_jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for favorites_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."favorites_id_seq";
CREATE SEQUENCE "public"."favorites_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for messages_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."messages_id_seq";
CREATE SEQUENCE "public"."messages_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_clients_id_seq";
CREATE SEQUENCE "public"."oauth_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_personal_access_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_personal_access_clients_id_seq";
CREATE SEQUENCE "public"."oauth_personal_access_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for objects_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."objects_id_seq";
CREATE SEQUENCE "public"."objects_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for personal_access_tokens_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."personal_access_tokens_id_seq";
CREATE SEQUENCE "public"."personal_access_tokens_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for reports_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."reports_id_seq";
CREATE SEQUENCE "public"."reports_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for reviews_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."reviews_id_seq";
CREATE SEQUENCE "public"."reviews_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."categories";
CREATE TABLE "public"."categories" (
  "id" int2 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1
),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "logo_url" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (9, 'Площадки для мероприятий', '2023-05-26 04:48:05.547743', NULL, '\assets\images\category_icons\event.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (1, 'Другое', '2023-05-25 15:42:32.488182', NULL, '\assets\images\category_icons\other.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (8, 'Звукозаписывающие студии', '2023-05-26 04:48:05.547743', NULL, '\assets\images\category_icons\audio-studio.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (4, 'VR площадки', '2023-05-26 04:48:05.547743', NULL, '\assets\images\category_icons\VR.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (3, 'Музыкальные классы', '2023-05-26 04:48:05.547743', NULL, '\assets\images\category_icons\repetition.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (14, 'Фото и видео студии', '2023-05-26 10:39:21.582027', NULL, '\assets\images\category_icons\photo-video-stud.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (2, 'Мастерские', '2023-05-26 04:48:05.547743', NULL, '\assets\images\category_icons\design-studio.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (7, 'Промышленные зоны', '2023-05-26 04:48:05.547743', NULL, '\assets\images\category_icons\factory.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (5, 'Офисы', '2023-05-26 04:48:05.547743', NULL, '\assets\images\category_icons\office.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (6, 'Книжные магазины', '2023-05-26 04:48:05.547743', NULL, '\assets\images\category_icons\book-store.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (15, 'Кинотеатры', '2023-05-26 10:39:21.582027', NULL, '\assets\images\category_icons\cinema.svg');
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (16, 'Выставочные галереи', '2023-05-30 05:11:02.072979', NULL, '\assets\images\category_icons\gallery.svg');

-- ----------------------------
-- Table structure for deals
-- ----------------------------
DROP TABLE IF EXISTS "public"."deals";
CREATE TABLE "public"."deals" (
  "id" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "object_owner_id" int8 NOT NULL,
  "customer_id" int8 NOT NULL,
  "object_id" int8 NOT NULL,
  "hour_price" numeric(8,2) NOT NULL,
  "total_price" numeric(8,2) NOT NULL,
  "starts_from" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "ends_on" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "confirmed" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of deals
-- ----------------------------
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (5, 14, 17, 13, 2000.00, 12000.00, '2023-06-01 12:00:00', '2023-06-01 18:00:00', '2023-06-01 01:28:58', '2023-06-01 01:30:20', 't');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (6, 15, 19, 15, 1000.00, 340000.00, '2023-06-03 13:00:00', '2023-06-17 17:00:00', '2023-06-01 12:44:22', '2023-06-06 00:33:20', 't');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (7, 15, 10, 15, 1000.00, 240000.00, '2023-06-07 00:00:00', '2023-06-17 00:00:00', '2023-06-06 00:10:18', '2023-06-06 00:33:21', 't');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (8, 15, 21, 15, 1000.00, 337000.00, '2023-06-03 14:00:00', '2023-06-17 15:00:00', '2023-06-08 03:31:02', '2023-06-08 03:31:02', 'f');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (9, 21, 23, 22, 900.00, 118800.00, '2023-06-04 00:00:00', '2023-06-09 12:00:00', '2023-06-08 08:43:12', '2023-06-08 08:43:48', 't');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (10, 10, 11, 35, 5000.00, 25000.00, '2023-06-09 13:00:00', '2023-06-09 18:00:00', '2023-06-10 07:06:41', '2023-06-10 11:06:55', 't');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (11, 11, 10, 36, 2000.00, 52000.00, '2023-06-10 13:00:00', '2023-06-11 15:00:00', '2023-06-10 11:03:13', '2023-06-10 11:12:32', 't');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (12, 11, 11, 36, 2000.00, 146000.00, '2023-06-10 14:00:00', '2023-06-13 15:00:00', '2023-06-10 12:16:58', '2023-06-10 12:17:07', 't');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (14, 16, 25, 18, 1200.00, 176400.00, '2023-06-12 12:00:00', '2023-06-18 15:00:00', '2023-06-10 15:38:43', '2023-06-10 15:38:43', 'f');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (16, 11, 10, 36, 2000.00, 100000.00, '2023-06-10 12:00:00', '2023-06-12 14:00:00', '2023-06-10 17:05:59', '2023-06-10 17:05:59', 'f');
INSERT INTO "public"."deals" OVERRIDING SYSTEM VALUE VALUES (17, 24, 10, 37, 100.00, 3100.00, '2023-06-13 12:00:00', '2023-06-14 19:00:00', '2023-06-10 17:00:38', '2023-06-10 17:03:07', 't');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."failed_jobs";
CREATE TABLE "public"."failed_jobs" (
  "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "connection" text COLLATE "pg_catalog"."default" NOT NULL,
  "queue" text COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception" text COLLATE "pg_catalog"."default" NOT NULL,
  "failed_at" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS "public"."favorites";
CREATE TABLE "public"."favorites" (
  "id" int4 NOT NULL DEFAULT nextval('favorites_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "object_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO "public"."favorites" VALUES (3, 10, 35);
INSERT INTO "public"."favorites" VALUES (4, 20, 16);
INSERT INTO "public"."favorites" VALUES (5, 10, 33);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS "public"."messages";
CREATE TABLE "public"."messages" (
  "id" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "text" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "receiver_user_id" int8 NOT NULL,
  "sender_user_id" int8 NOT NULL,
  "readed_by_receiver" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO "public"."migrations" VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO "public"."migrations" VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO "public"."migrations" VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO "public"."migrations" VALUES (9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_access_tokens";
CREATE TABLE "public"."oauth_access_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8,
  "client_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" bool NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO "public"."oauth_access_tokens" VALUES ('111b6d7a2e53482ad6fc7e9d91427edc55b8bcbe19d250e3593f527c346fced3e5b3a74cbc4ae996', 3, 2, NULL, '[]', 'f', '2023-05-16 05:55:29', '2023-05-16 05:55:29', '2024-05-16 05:55:29');
INSERT INTO "public"."oauth_access_tokens" VALUES ('caabd576f5c2ecceed87dcd09aa32395a7a6790c818dace8d406d7721147c85905dda5055ab9410f', 3, 2, NULL, '[]', 't', '2023-05-16 06:03:30', '2023-05-16 06:03:35', '2024-05-16 06:03:30');
INSERT INTO "public"."oauth_access_tokens" VALUES ('4b99911dc90477f70e6fb4420bfb722edf198f516046311637f1b3b10ec53d9d15f18764a5b23373', 3, 2, NULL, '[]', 'f', '2023-05-16 06:03:45', '2023-05-16 06:03:45', '2024-05-16 06:03:45');
INSERT INTO "public"."oauth_access_tokens" VALUES ('9429c599c9f72442fb82c386021c99f09c928ab884becda5062ffafd349b0cf547679440184f5a4c', 3, 2, NULL, '[]', 't', '2023-05-21 23:35:39', '2023-05-21 23:35:43', '2024-05-21 23:35:39');
INSERT INTO "public"."oauth_access_tokens" VALUES ('921e18f1870031c1e228764503b79b0032ec7621c90ec81ba8c874a624f73875a559194aedab82ee', 4, 2, NULL, '[]', 't', '2023-05-21 23:36:07', '2023-05-21 23:37:14', '2024-05-21 23:36:07');
INSERT INTO "public"."oauth_access_tokens" VALUES ('17f985c3b675b842383865690a0034fa8ead5d3c83913834b02472f5df1ae8041506e18ed70e0701', 5, 2, NULL, '[]', 'f', '2023-05-21 23:37:38', '2023-05-21 23:37:38', '2024-05-21 23:37:38');
INSERT INTO "public"."oauth_access_tokens" VALUES ('fc771e46fb24538ba5fbd36d40f2a6b21b2f2812ec31f85bc88dc1149b2e8d4edbb2216d56fc926a', 6, 2, NULL, '[]', 'f', '2023-05-21 23:40:30', '2023-05-21 23:40:30', '2024-05-21 23:40:30');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a1e9e85d67f2368069b0348b3dc04244c36f3f6dc4249762901fdef3bb4ecc535eefbee8dd37359c', 6, 2, NULL, '[]', 'f', '2023-05-22 00:25:24', '2023-05-22 00:25:24', '2024-05-22 00:25:24');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0241158755fa946ed5703a0971070d754ed4dd90b425aad1f6f3b525d4357b8488686ea1da20ec8f', 6, 2, NULL, '[]', 't', '2023-05-24 06:44:30', '2023-05-24 06:44:36', '2024-05-24 06:44:30');
INSERT INTO "public"."oauth_access_tokens" VALUES ('273c2ddd14a111e7e22795c037cdc91a94df5602d7d34b097646650c094cf01eac856c9f9c797d4d', 6, 2, NULL, '[]', 'f', '2023-05-24 06:44:50', '2023-05-24 06:44:50', '2024-05-24 06:44:50');
INSERT INTO "public"."oauth_access_tokens" VALUES ('37427a81f9418df1ce72db9e9d0e0183b3609c23302f3796d81727b89eb89b67b141901e492185fd', 5, 2, NULL, '[]', 'f', '2023-05-24 23:59:52', '2023-05-24 23:59:52', '2024-05-24 23:59:52');
INSERT INTO "public"."oauth_access_tokens" VALUES ('b2f1f57d5b79c57926cc412083e582d55516139e17a7c533c4714cc1c18d8cf8a5e12820630d08ef', 7, 2, NULL, '[]', 'f', '2023-05-25 05:31:56', '2023-05-25 05:31:56', '2024-05-25 05:31:56');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3cebd35731c1327b89bdc6fe4481776575e512389041118729ab2e34e2ac7706a4a25fec0365e9fd', 7, 2, NULL, '[]', 'f', '2023-05-25 05:34:06', '2023-05-25 05:34:06', '2024-05-25 05:34:06');
INSERT INTO "public"."oauth_access_tokens" VALUES ('049a108feaa678a1deb4ce4b77ed6b7325f646a561c233d4d4d4e2b91a7c549705f42d29e21b782c', 6, 2, NULL, '[]', 'f', '2023-05-26 05:06:47', '2023-05-26 05:06:47', '2024-05-26 05:06:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ef6223b423e1cffc4137e57c4654a8be4275980a9888ef5f20ee2ef8176139ecb2380bf0dd4d6ab6', 5, 2, NULL, '[]', 'f', '2023-05-26 11:16:43', '2023-05-26 11:16:43', '2024-05-26 11:16:43');
INSERT INTO "public"."oauth_access_tokens" VALUES ('02af5d48aa420d0c965bd38a755a776b1005784425e056aee92b2626a95e415d28a643bb50c96730', 8, 2, NULL, '[]', 'f', '2023-05-28 10:57:35', '2023-05-28 10:57:35', '2024-05-28 10:57:35');
INSERT INTO "public"."oauth_access_tokens" VALUES ('8e096a29064aff0dfa6acca5cbcf9d69be03f62b0fdd2d3d5d20e578a3c3f1573471a7c27ea91da3', 5, 2, NULL, '[]', 'f', '2023-05-29 04:56:25', '2023-05-29 04:56:25', '2024-05-29 04:56:25');
INSERT INTO "public"."oauth_access_tokens" VALUES ('683dd4e607ebb5c54834e6a03252bd8bc36ee55ccc9c973be6132ed7bca5c220763c03998e488735', 5, 2, NULL, '[]', 'f', '2023-05-29 05:05:57', '2023-05-29 05:05:57', '2024-05-29 05:05:57');
INSERT INTO "public"."oauth_access_tokens" VALUES ('2baa783c6055baabd9f8c6696664b718c01945a967a8db1bbd543ee069d8e14ee8b668214864f593', 5, 2, NULL, '[]', 't', '2023-05-29 05:07:54', '2023-05-29 05:08:08', '2024-05-29 05:07:54');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0bee08b98ac37ec784e0a6a25ab30ff88c12700556cd91258aa8b70a10df8d96c40f97c07c5f4c4d', 5, 2, NULL, '[]', 't', '2023-05-29 05:08:12', '2023-05-29 05:09:59', '2024-05-29 05:08:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0d65dc9ddca771da86e531e1b1b5df1d1ec3d63b57543f6dc344e297f3ed85e411e62d385933a9e7', 5, 2, NULL, '[]', 't', '2023-05-29 05:10:05', '2023-05-29 23:04:59', '2024-05-29 05:10:05');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6d055f387eb7f49b832170c71fc5912dc7f7ba1d00f51eb854c6a084c8bc97b810f62a28e36da763', 9, 2, NULL, '[]', 'f', '2023-05-30 01:57:36', '2023-05-30 01:57:36', '2024-05-30 01:57:36');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f65d66321f7d0e8437469a1ceea1c8599191f97364aed230c08de6944c19e99389ae451b36028890', 11, 2, NULL, '[]', 't', '2023-05-30 02:37:55', '2023-05-30 02:39:02', '2024-05-30 02:37:55');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0488dae90c49b8e6a71cb095a6d04a55a4c95c88768a4e53abe48f7e2fb7b3e3dbc593aa1d9edcd8', 10, 2, NULL, '[]', 't', '2023-05-30 02:39:14', '2023-05-30 02:50:49', '2024-05-30 02:39:14');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0668b2d7ee9fb0528fb047e098feeaac11c518492c03dc4eca7f47fa56f17d6a95794c162cf16da0', 11, 2, NULL, '[]', 't', '2023-05-30 02:50:54', '2023-05-30 02:51:16', '2024-05-30 02:50:54');
INSERT INTO "public"."oauth_access_tokens" VALUES ('243396d5a62e212f233ccca96e7163258cf84adbc8e4380a5e838deb90d034ecd4751467f35f6854', 10, 2, NULL, '[]', 't', '2023-05-30 04:23:21', '2023-05-30 04:46:14', '2024-05-30 04:23:21');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d282e5acf8d9f03a849b9c7f1c655832b501a9dab9e8a25809d92f1b0d04495acdccda76d9192662', 12, 2, NULL, '[]', 't', '2023-05-30 04:48:08', '2023-05-30 04:54:40', '2024-05-30 04:48:08');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3671fba14beb3ec73c8c435592ff63770d0d66dd9737245bee7006d9c9631b9f9bdc201986603ee8', 10, 2, NULL, '[]', 't', '2023-05-30 04:54:44', '2023-05-30 04:55:00', '2024-05-30 04:54:44');
INSERT INTO "public"."oauth_access_tokens" VALUES ('37f69b70d64c8c9c5601c9937e558190db24ce97548e7dced2b26d45943bc688ca46c916d5fcf810', 12, 2, NULL, '[]', 't', '2023-05-30 04:55:03', '2023-05-30 05:22:53', '2024-05-30 04:55:03');
INSERT INTO "public"."oauth_access_tokens" VALUES ('71ebdec3cde71c13b9ae8ec4e34a48ac66ee20abbc3f6c0542c482595f202c94477fb6d54ca2f6d0', 10, 2, NULL, '[]', 't', '2023-05-30 05:22:59', '2023-05-30 05:23:13', '2024-05-30 05:22:59');
INSERT INTO "public"."oauth_access_tokens" VALUES ('c09228f725d22d6c6d2d48895779bfdb5ce9d6c90ceb8bdcc64c9c4a51ce8d5eaaca5e5a81de7f4e', 10, 2, NULL, '[]', 't', '2023-05-30 02:51:25', '2023-05-30 05:37:50', '2024-05-30 02:51:25');
INSERT INTO "public"."oauth_access_tokens" VALUES ('aa7e3dbc85b307fc668d8562a99ee0923917d74fac7b18036b77e59ed5f28a77b6d016cc3346cbe1', 12, 2, NULL, '[]', 't', '2023-05-30 05:23:17', '2023-05-30 05:42:37', '2024-05-30 05:23:17');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1152a53d6833ce0f49b10aa5fb320c118ad5d4aadfade3cdcf8ab8dcef2e3b360d9fd9dea629b9a5', 10, 2, NULL, '[]', 't', '2023-05-30 05:42:41', '2023-05-30 05:42:53', '2024-05-30 05:42:41');
INSERT INTO "public"."oauth_access_tokens" VALUES ('31ca4bd7370eb7f58e564ca127d1fb413e31320a8ec80ead04ba855208805e5202afcd5e63fa46ed', 12, 2, NULL, '[]', 't', '2023-05-30 05:42:58', '2023-05-30 05:47:38', '2024-05-30 05:42:58');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3e194ab5e55a0c46d04471336564aaa4ee654c53b93dcf77009c2c2ff53de8ee40dcf56581b263d1', 13, 2, NULL, '[]', 't', '2023-05-30 05:48:35', '2023-05-30 05:58:06', '2024-05-30 05:48:35');
INSERT INTO "public"."oauth_access_tokens" VALUES ('928c014b36cbe07234390f91d352fe524e00df03875462c665e797908165dad6a9f4e2a007957b4a', 10, 2, NULL, '[]', 't', '2023-05-30 05:58:11', '2023-05-30 05:58:30', '2024-05-30 05:58:11');
INSERT INTO "public"."oauth_access_tokens" VALUES ('4824b41b80aca4a48852e33b361b60646c2fcbce58b9bd29717d085978cdf6f2e3906dabbe2b104b', 13, 2, NULL, '[]', 't', '2023-05-30 05:58:40', '2023-05-30 06:01:25', '2024-05-30 05:58:40');
INSERT INTO "public"."oauth_access_tokens" VALUES ('164744a4e9ca8358c8c6c5ef63c7b63d4566bd1ebc181ea7a1ce322031a6bc7a41960a9894d629fb', 14, 2, NULL, '[]', 't', '2023-05-30 06:03:18', '2023-05-30 06:09:52', '2024-05-30 06:03:18');
INSERT INTO "public"."oauth_access_tokens" VALUES ('baba41fa74dd317e1dfde97f7f4ed8d31b194f974b3c7d8ef1683d76bfadbe2d91cc2abfbb48b360', 10, 2, NULL, '[]', 't', '2023-05-30 06:09:56', '2023-05-30 06:12:32', '2024-05-30 06:09:56');
INSERT INTO "public"."oauth_access_tokens" VALUES ('15084b5d468371f840cbc09f81f2a00515bc98e0a266da070f8ca2f762af001141e0dbaede127917', 15, 2, NULL, '[]', 't', '2023-05-30 06:13:42', '2023-05-30 06:16:56', '2024-05-30 06:13:42');
INSERT INTO "public"."oauth_access_tokens" VALUES ('fed329cd735fafc2796cd321f0c2b53e15a616954bd961b4d5dcb5e777e82c2942bb26bbc603f92d', 10, 2, NULL, '[]', 't', '2023-05-30 06:16:59', '2023-05-30 06:18:06', '2024-05-30 06:16:59');
INSERT INTO "public"."oauth_access_tokens" VALUES ('73ab9b5804297bda113233f4c37b765944782d4ebea5a6038c362a3ef7f578807f948d24ee3896c9', 16, 2, NULL, '[]', 't', '2023-05-30 06:18:47', '2023-05-30 06:24:11', '2024-05-30 06:18:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1d1b561f8a3d3d166b7f1eec13b512fde78f4e2b7e5ee8c16e0055e5fd618d5ec26295951583bdc9', 10, 2, NULL, '[]', 't', '2023-05-30 06:24:13', '2023-05-30 06:24:32', '2024-05-30 06:24:13');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0ef49a508ca0bd00146ce8c50b18895fb4bbbf96c0a31fd2205a7f98375f50964559cdde7df95291', 17, 2, NULL, '[]', 't', '2023-05-30 06:29:04', '2023-05-30 06:33:09', '2024-05-30 06:29:04');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d48ca4512617621727cb7008591799187e1e9fc2fdaebf700d0bf02d2f62ea4983425b56690a753e', 12, 2, NULL, '[]', 't', '2023-05-30 05:37:57', '2023-05-30 09:06:51', '2024-05-30 05:37:57');
INSERT INTO "public"."oauth_access_tokens" VALUES ('b7f46ef1e68c5c5e6feb92ada7d4b904e71e34fb2c6bc5272aba69cbdecc71cb80cbc5df6fdda3a3', 10, 2, NULL, '[]', 't', '2023-05-30 06:33:12', '2023-05-30 06:35:47', '2024-05-30 06:33:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('2fa6e53de9eb4470a73fea6945a1524d3303234bddb2cd100d4eb6de0a67ab64f27c88962ecf8040', 12, 2, NULL, '[]', 't', '2023-05-30 06:35:51', '2023-05-30 07:06:23', '2024-05-30 06:35:51');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a7acd75efee544646c7642dc6cee4022c81eb2bc784906c1e6148c47c35d17d18c0b9b6655c4b9b4', 10, 2, NULL, '[]', 't', '2023-05-30 06:49:47', '2023-05-30 07:05:04', '2024-05-30 06:49:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f256ef9d36c30a0eca6a632a9623ae9aa0948fcb096d5e9bff02390a3c70a205db82cacdb1ef07fd', 11, 2, NULL, '[]', 't', '2023-05-30 09:57:41', '2023-05-31 04:49:37', '2024-05-30 09:57:41');
INSERT INTO "public"."oauth_access_tokens" VALUES ('24bc5ddaa1df4f0ac4f60e832958487fe5bc12e11ad4612f0bc3623e895eb6da942299ecce7069e7', 11, 2, NULL, '[]', 't', '2023-05-31 04:49:52', '2023-05-31 06:53:48', '2024-05-31 04:49:52');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d5f595a636109e949daa1cf3598d21d7529ce933f30fc70afe846d4b124d9ed3487525a27e18dfcf', 12, 2, NULL, '[]', 'f', '2023-05-31 06:54:08', '2023-05-31 06:54:08', '2024-05-31 06:54:08');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f0c8087e96a94ba6287f0c234d336a55111c0dda184cc4048412fe2e70f37292473c998428b19bba', 10, 2, NULL, '[]', 't', '2023-05-30 07:05:12', '2023-05-31 06:48:47', '2024-05-30 07:05:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a0090f6e97d4eff3e36ce6407e0badab23ac4d9ed9c80ba701bda51e61f77a3355b41622a00426e0', 10, 2, NULL, '[]', 't', '2023-05-31 06:48:52', '2023-05-31 06:49:01', '2024-05-31 06:48:52');
INSERT INTO "public"."oauth_access_tokens" VALUES ('4c069209c6fd77713f199713208aa9a43de8ca6a2c01e756cacf1c457a06bf7b8e2caea5566fa0e3', 11, 2, NULL, '[]', 't', '2023-05-31 06:49:34', '2023-05-31 07:06:54', '2024-05-31 06:49:34');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ae6833f5618f5c1b5ad2a8f8175565ff8c54976a0d304ec9d9295cc709bfb06adf9dc9c685c3eed5', 17, 2, NULL, '[]', 't', '2023-05-30 06:56:19', '2023-06-01 01:29:06', '2024-05-30 06:56:19');
INSERT INTO "public"."oauth_access_tokens" VALUES ('103353777bfd011c79ef2f21e4f20352f4a62d389021078d4e0a60e378a15a16664ba6070e6b671f', 14, 2, NULL, '[]', 't', '2023-06-01 01:29:50', '2023-06-01 01:30:28', '2024-06-01 01:29:50');
INSERT INTO "public"."oauth_access_tokens" VALUES ('42275bf1e8a99b27fd28ba5009807b657ab89f94395ce34c66401a104931dc0e4973a1df701f9a7e', 17, 2, NULL, '[]', 't', '2023-06-01 01:31:39', '2023-06-01 01:32:22', '2024-06-01 01:31:39');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a2784202867db360ee92d50651b85d469c8cf47fb64785bc781bd0c766695b08170f00826ad91a66', 11, 2, NULL, '[]', 'f', '2023-06-01 05:36:00', '2023-06-01 05:36:00', '2024-06-01 05:36:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d2069d92eee5d5d070686a236927f4273310e760264cbec41ff2e680ad242e37203021e73a6f9cd1', 11, 2, NULL, '[]', 'f', '2023-06-01 05:37:54', '2023-06-01 05:37:54', '2024-06-01 05:37:54');
INSERT INTO "public"."oauth_access_tokens" VALUES ('10c270709f1e58d408ae2acb2b105a6183bb06e1371983d9cbdcbf9ccda2b4286a89994e7900a89b', 11, 2, NULL, '[]', 'f', '2023-06-01 05:45:12', '2023-06-01 05:45:12', '2024-06-01 05:45:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3abb05d41d4e0207e26d446e88c047e7e866d9aa6d899d03b22a5f10009e32b5f213073ea8fc8935', 11, 2, NULL, '[]', 'f', '2023-06-01 06:50:34', '2023-06-01 06:50:34', '2024-06-01 06:50:34');
INSERT INTO "public"."oauth_access_tokens" VALUES ('658fa677e923c1a22eff8e46c6b0f1931a1b2ff90e83be652bb77f03acd60887b325e028cce4bea9', 11, 2, NULL, '[]', 't', '2023-06-01 06:51:13', '2023-06-01 06:52:02', '2024-06-01 06:51:13');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a26631909536c3bbae38f140ffb0f78f16e171db8f8c56b599652673ec8a0a9440e516573d4e4a40', 18, 2, NULL, '[]', 't', '2023-06-01 01:37:15', '2023-06-01 06:47:55', '2024-06-01 01:37:15');
INSERT INTO "public"."oauth_access_tokens" VALUES ('2716d1eb037a3ec5c8d6a879f1af4b0be303e46ce3a1f6249d8a59885416d996af91c95c8ffea9f4', 12, 2, NULL, '[]', 't', '2023-05-31 07:07:31', '2023-06-01 06:52:51', '2024-05-31 07:07:31');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a3b6d414a74f3a2b8c7db99f210ed8a3dff9295c275d60188c034410152db399a652e92ccafa2e8d', 10, 2, NULL, '[]', 't', '2023-06-01 06:52:56', '2023-06-01 06:54:30', '2024-06-01 06:52:56');
INSERT INTO "public"."oauth_access_tokens" VALUES ('4f2f8203576f4c17205c417a629b64e28ef7ad26abb7f22bafe2093575725600417d0c5848539530', 19, 2, NULL, '[]', 't', '2023-06-01 12:43:06', '2023-06-01 12:44:49', '2024-06-01 12:43:06');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d2ff11f1b4dcc0a5895f429d67179802066235f64beb50ddb6aa75f0bed6892342df90d93aad6d28', 20, 2, NULL, '[]', 't', '2023-06-01 12:45:55', '2023-06-01 12:47:51', '2024-06-01 12:45:55');
INSERT INTO "public"."oauth_access_tokens" VALUES ('c712fbffc1728247bb387b25fef9b0d534dae1e66f73d9266e592460327245bc8d55f200e0634240', 10, 2, NULL, '[]', 't', '2023-06-01 12:48:10', '2023-06-01 12:54:42', '2024-06-01 12:48:10');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6d93623113dcc1121377dc7cbfb0f823a3b4fb1b5104c1e73da9a568e4ce4639238dcb05e27e87e6', 20, 2, NULL, '[]', 'f', '2023-06-01 12:54:47', '2023-06-01 12:54:47', '2024-06-01 12:54:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6c4f3a5d48f85f8172789826b7df1f811780f580108bd6f5f8ba68ca152653e30c488191866d41f9', 21, 2, NULL, '[]', 't', '2023-06-03 10:33:50', '2023-06-03 10:33:59', '2024-06-03 10:33:50');
INSERT INTO "public"."oauth_access_tokens" VALUES ('57a496a0aa3c46d99fb98a2acf35c7a678fefb3113edfd2804b56897be94d85dfc5b6391e9d1ca3b', 22, 2, NULL, '[]', 'f', '2023-06-04 01:14:47', '2023-06-04 01:14:47', '2024-06-04 01:14:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('05dbed11b8ba662da4bd7a0ed19c22771318a0b8e99ecdd3eebac5e6a37eebb163aaa4d9efba0b90', 10, 2, NULL, '[]', 't', '2023-06-01 06:54:33', '2023-06-06 00:11:14', '2024-06-01 06:54:33');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f214b58585c1c03b27bc6c050c6a224e061faf20d99efc8ef378e841f88ce097b78286b8ca914232', 10, 2, NULL, '[]', 't', '2023-06-06 00:11:29', '2023-06-06 00:12:40', '2024-06-06 00:11:29');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ea4e41e539bebdcc7822d1552964add4ac60975bfd5bb2af0bb50f0a0f820404071edc632b5daf2a', 12, 2, NULL, '[]', 't', '2023-06-01 06:48:59', '2023-06-06 00:32:57', '2024-06-01 06:48:59');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ed360ecb656726ff3842682766bfffb4a01a044a6fb5f6957ea42ff681d63e5221c14883d49e3257', 21, 2, NULL, '[]', 't', '2023-06-03 10:34:03', '2023-06-07 22:23:57', '2024-06-03 10:34:03');
INSERT INTO "public"."oauth_access_tokens" VALUES ('5635ba39559f30ba1df029cf902135722da957a10f553c7504878ef6ea2a695a5d5ab38c63a66ad1', 21, 2, NULL, '[]', 't', '2023-06-08 03:30:08', '2023-06-08 03:32:03', '2024-06-08 03:30:08');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d1ce0ce8417979fca3919d6e909837c7798c12ffc8416836dfc3cffbcf3c2dedc68ca17bafc14895', 10, 2, NULL, '[]', 't', '2023-06-08 03:32:46', '2023-06-08 03:33:36', '2024-06-08 03:32:46');
INSERT INTO "public"."oauth_access_tokens" VALUES ('35230df09a9b39f144134451a85c82800596376695e4301a609a84a916583f1aa60f55eb8392a8c6', 21, 2, NULL, '[]', 'f', '2023-06-08 03:33:42', '2023-06-08 03:33:42', '2024-06-08 03:33:42');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d73446dd33d49ef5729b36aae17da844614ca2f7f020b36deefe6a7d604c82f6a2f7ff89f0c129d5', 21, 2, NULL, '[]', 't', '2023-06-08 06:01:37', '2023-06-08 06:04:39', '2024-06-08 06:01:37');
INSERT INTO "public"."oauth_access_tokens" VALUES ('fa3cb764e8d1b9cb3ebcb2f65fa2b4429d0edd9588d643bc2085164293973a7978a9b774f4fda216', 10, 2, NULL, '[]', 't', '2023-06-08 06:04:45', '2023-06-08 06:07:17', '2024-06-08 06:04:45');
INSERT INTO "public"."oauth_access_tokens" VALUES ('30d4d19747cd707154b81ee3d2bcc770843f8bc9699ca7760bf7c500df7fc201f411d771d83662ec', 21, 2, NULL, '[]', 't', '2023-06-08 06:30:35', '2023-06-08 06:50:40', '2024-06-08 06:30:35');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d5feaa19a4a6b2cc67ed9a59b6445b3491ffaa428e80c87a2b44c477472069f7c318fba963a5912a', 10, 2, NULL, '[]', 'f', '2023-06-08 06:50:47', '2023-06-08 06:50:47', '2024-06-08 06:50:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('328d5b8cede825b778b2967831671ea0ac1ff72581f87a838d506cf90b8e2eddb4a1cfce047078eb', 10, 2, NULL, '[]', 'f', '2023-06-08 08:02:02', '2023-06-08 08:02:02', '2024-06-08 08:02:02');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1acab11c1824eda528c002be5924cc435951d4a440c6661148b93668d1b71db165e4a2050531372a', 21, 2, NULL, '[]', 'f', '2023-06-08 08:40:50', '2023-06-08 08:40:50', '2024-06-08 08:40:50');
INSERT INTO "public"."oauth_access_tokens" VALUES ('5b93edbbe3fc34485882fe629041bc90c0d985b1de171a022e0cab8ada9602f32d7e5a4e409b1f43', 23, 2, NULL, '[]', 'f', '2023-06-08 08:42:12', '2023-06-08 08:42:12', '2024-06-08 08:42:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a8bbbca9a6c1e76a6e24a8531c28874b849317c1f4fd3d0c083a7b538cad61f44dc908b61adcce4e', 11, 2, NULL, '[]', 't', '2023-06-01 06:53:17', '2023-06-09 11:16:11', '2024-06-01 06:53:17');
INSERT INTO "public"."oauth_access_tokens" VALUES ('504c24fd752f1783f2fc1b83c46e8f242937b072d0a11f033d8c42a40f8f7e447e0f2ba8bd987b26', 24, 2, NULL, '[]', 't', '2023-06-09 19:31:54', '2023-06-09 19:35:24', '2024-06-09 19:31:54');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0760a64b2bff9a49f262fe06270362755ecec858bb5147ca9e109409603f248970970c7ba8485c29', 10, 2, NULL, '[]', 't', '2023-06-09 11:16:16', '2023-06-10 01:29:33', '2024-06-09 11:16:16');
INSERT INTO "public"."oauth_access_tokens" VALUES ('fcd75cd4bbe3e54004f395d0bab4dcdd5a28c4d35001829f1efece9d183acdd9da9ace637fe7b75b', 10, 2, NULL, '[]', 't', '2023-06-06 00:12:56', '2023-06-10 16:04:56', '2024-06-06 00:12:56');
INSERT INTO "public"."oauth_access_tokens" VALUES ('82e7dc9779f37b9245ff4ce7a4cebafbdbd4fc33abbbe858555c23163be4c8ebc733576b241aa943', 15, 2, NULL, '[]', 't', '2023-06-06 00:33:08', '2023-06-13 00:31:52', '2024-06-06 00:33:08');
INSERT INTO "public"."oauth_access_tokens" VALUES ('c57b16325dbb67762816e24f94523e083cf137d6229e1e6ea7dc7881239b356e71320f3b5a9db74a', 24, 2, NULL, '[]', 't', '2023-06-09 19:35:49', '2023-06-09 19:35:52', '2024-06-09 19:35:49');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6156be3b2c26d030f8a91140526f2711c4b2657ebbef9a9d25193a754e914395ab0fb3d5cf660ef9', 25, 2, NULL, '[]', 't', '2023-06-09 19:37:52', '2023-06-09 19:37:57', '2024-06-09 19:37:52');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e64cb124456acc73e9688d7dd2ad52286dd4227246619af5390eecf58c93bdce8a9d2d3417984c60', 24, 2, NULL, '[]', 't', '2023-06-09 19:38:06', '2023-06-09 19:38:37', '2024-06-09 19:38:06');
INSERT INTO "public"."oauth_access_tokens" VALUES ('fc20d4a70c1cade3cbb7f70782d378e8c2dcbd7988257e1e0025f374191df139ab159a991216c3f9', 24, 2, NULL, '[]', 'f', '2023-06-09 19:38:41', '2023-06-09 19:38:41', '2024-06-09 19:38:41');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f179a559c325bb8913c3b7590fab1252535b4b4c205f2f178571d751d125ac1c4149cf499e84fc63', 10, 2, NULL, '[]', 't', '2023-06-10 01:29:53', '2023-06-10 02:59:24', '2024-06-10 01:29:53');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e8e88f79b5c49d16c54a6d8f9ff0223192104d5d2c6e1398b0c21336a5637430e8adb0b83e770379', 26, 2, NULL, '[]', 't', '2023-06-10 03:06:48', '2023-06-10 03:07:41', '2024-06-10 03:06:48');
INSERT INTO "public"."oauth_access_tokens" VALUES ('99408c9ef4d5bcb1051d0663040efb905a7febae4a84c25845eefed77269567508e77ba44904e6cd', 10, 2, NULL, '[]', 't', '2023-06-10 03:07:49', '2023-06-10 03:12:34', '2024-06-10 03:07:49');
INSERT INTO "public"."oauth_access_tokens" VALUES ('b33122cdb59f7e2f0ee0eec662ca93df80421248c7f205126b66edc1a189520666d51b86e81f58fb', 11, 2, NULL, '[]', 't', '2023-06-10 03:15:09', '2023-06-10 03:15:19', '2024-06-10 03:15:09');
INSERT INTO "public"."oauth_access_tokens" VALUES ('06974e4e9f5f01d5a30a71a00bd2725fd45c691f8555669545628972842f41b71539e5d8adacbdd3', 27, 2, NULL, '[]', 't', '2023-06-10 03:17:27', '2023-06-10 03:17:32', '2024-06-10 03:17:27');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6a8580dc38ec384c7a37b6453522744f6dc8ed1ab86948af9a131d8bdc72356c502d4cfc5b67165b', 27, 2, NULL, '[]', 't', '2023-06-10 03:17:43', '2023-06-10 03:17:56', '2024-06-10 03:17:43');
INSERT INTO "public"."oauth_access_tokens" VALUES ('2af3b76dd8a98a0e6553c01010fc74f6a97fd67153b0f9f91d497963daa19cec7d46ea85e28876cc', 11, 2, NULL, '[]', 't', '2023-06-10 03:22:26', '2023-06-10 03:22:32', '2024-06-10 03:22:26');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a062cb137110f954b367c7a9ba0f38928eaa0d8caae614e339ffb9dbd774b8192da34760b001382f', 10, 2, NULL, '[]', 't', '2023-06-10 03:25:37', '2023-06-10 05:19:26', '2024-06-10 03:25:37');
INSERT INTO "public"."oauth_access_tokens" VALUES ('677a297f5bca4a2a648e0d0446b087348f3353c3396946c2f4dfc04e704891839c716d65b9f57710', 10, 2, NULL, '[]', 't', '2023-06-10 06:09:22', '2023-06-10 06:39:04', '2024-06-10 06:09:22');
INSERT INTO "public"."oauth_access_tokens" VALUES ('4d08aeaa06aa01df692e4f9d07047d9d7e356a461921e9be22ecaf3d137cc8ff7750bf6899ce2c36', 11, 2, NULL, '[]', 't', '2023-06-10 07:05:23', '2023-06-10 07:39:00', '2024-06-10 07:05:23');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e221d6098b0d85450c6d571f4a967009fe31fb0427d6f33140fb8c0ccd50d550fbe408ebe3bc46e3', 10, 2, NULL, '[]', 't', '2023-06-10 07:39:19', '2023-06-10 11:11:55', '2024-06-10 07:39:19');
INSERT INTO "public"."oauth_access_tokens" VALUES ('7bcbae4126be1262a6b62fb31063d1655dd1c28a3b977a9ef700b73b4510c3da346c531501114b4c', 11, 2, NULL, '[]', 't', '2023-06-10 11:12:16', '2023-06-10 11:12:35', '2024-06-10 11:12:16');
INSERT INTO "public"."oauth_access_tokens" VALUES ('73d99154b3f19d653faed111f6782793aa3f4553d5ffa8fbdf59c125691fb3e03ef4af418b32afca', 10, 2, NULL, '[]', 'f', '2023-06-10 11:35:11', '2023-06-10 11:35:11', '2024-06-10 11:35:11');
INSERT INTO "public"."oauth_access_tokens" VALUES ('2d6cadac956043d689dabc555db465c89e324b12d2ec04bd34b2e2d9bc851ca0546dcdef1fcb385d', 10, 2, NULL, '[]', 't', '2023-06-10 11:12:40', '2023-06-10 11:36:09', '2024-06-10 11:12:40');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ab4e64d316f4f2729cc91a4bcaae3e6d50be7934100285b1579004db1fccb8543179dacd847cc365', 11, 2, NULL, '[]', 't', '2023-06-10 11:36:18', '2023-06-10 11:36:31', '2024-06-10 11:36:18');
INSERT INTO "public"."oauth_access_tokens" VALUES ('07d5549764f86630d4fe863db28e91046b8d173535d6ac0df7221f4a817bbd1e31d1bf039ab5e861', 10, 2, NULL, '[]', 't', '2023-06-10 11:36:37', '2023-06-10 12:06:56', '2024-06-10 11:36:37');
INSERT INTO "public"."oauth_access_tokens" VALUES ('60502b20cfe17b9ccbecf83ed043a31ab9495c4eec27cb16f508a353e9d663cc149587ff31e9d199', 10, 2, NULL, '[]', 't', '2023-06-10 12:13:38', '2023-06-10 12:14:51', '2024-06-10 12:13:38');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0d5667abd77eefbb663d71ece05a3ce15e6d3be5c234df182236af17b8d4de7d8feead51746239fc', 10, 2, NULL, '[]', 't', '2023-06-10 12:14:56', '2023-06-10 12:16:10', '2024-06-10 12:14:56');
INSERT INTO "public"."oauth_access_tokens" VALUES ('284edf751d81f208edf191bb1a30560d33cb6ef1bee720f040bc6364772a6e334a284c3f1043b3e8', 11, 2, NULL, '[]', 't', '2023-06-10 12:16:22', '2023-06-10 12:44:02', '2024-06-10 12:16:22');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0208d20add78f85656399337670d7c681bd786961239c329d0aba37c987896c1e596c065151a7dd2', 10, 2, NULL, '[]', 't', '2023-06-10 12:44:16', '2023-06-10 15:28:42', '2024-06-10 12:44:16');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ac7e4f5cc1212c9ad335e88f3d1cfc1de25c2f55a1d0c78ec4b364d28ecc8e0b73e659822397c486', 11, 2, NULL, '[]', 't', '2023-06-10 15:28:47', '2023-06-10 15:28:52', '2024-06-10 15:28:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('aa4c19c6380bdb368b6504e7aa1ba333586536c926bb1613440d050535da5f848b5f22db21647539', 11, 2, NULL, '[]', 't', '2023-06-10 15:29:06', '2023-06-10 15:29:13', '2024-06-10 15:29:06');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1f13bf0dc1b242616cb2ce88a8deced7d4b648d21ef7d4df376b458ec88f9a3946947122a0515f90', 24, 2, NULL, '[]', 't', '2023-06-10 15:29:12', '2023-06-10 15:29:53', '2024-06-10 15:29:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e3ace9f5ae64ed61c40098cb5d08aa48b824159f52310b0f70cd6f4ad1d0320159c455c931e18fe1', 25, 2, NULL, '[]', 't', '2023-06-10 15:36:34', '2023-06-10 15:39:39', '2024-06-10 15:36:34');
INSERT INTO "public"."oauth_access_tokens" VALUES ('425998c59be64cf0bdfeab720acabe76ccffd8ed5eae1596540a68470f6cc0baaab69ec46eafdd86', 24, 2, NULL, '[]', 'f', '2023-06-10 15:39:58', '2023-06-10 15:39:58', '2024-06-10 15:39:58');
INSERT INTO "public"."oauth_access_tokens" VALUES ('debfc9d34c7f57129a8224b143dabe987113eb528d3a60d2a558e03e62beae61489b1e160ac2c140', 10, 2, NULL, '[]', 't', '2023-06-10 15:44:37', '2023-06-10 15:45:52', '2024-06-10 15:44:37');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6a0306869f3dd9461a0ada7c7ae524e3759bab07efb0e7c407c7bc66499bb632426e43a3776992ac', 25, 2, NULL, '[]', 't', '2023-06-10 15:46:19', '2023-06-10 15:47:50', '2024-06-10 15:46:19');
INSERT INTO "public"."oauth_access_tokens" VALUES ('db9965e54b0ad790ce9ad76b609c6fd0f00737b6b1f7a83c612200e3a487316501b428827bed0b04', 24, 2, NULL, '[]', 't', '2023-06-10 15:48:51', '2023-06-10 15:49:43', '2024-06-10 15:48:51');
INSERT INTO "public"."oauth_access_tokens" VALUES ('c4adb04e708e24775270e123c1e9104f62264452bfaee96cb863cec7dc25d9f4b71f7ea070502541', 10, 2, NULL, '[]', 'f', '2023-06-10 16:06:24', '2023-06-10 16:06:24', '2024-06-10 16:06:24');
INSERT INTO "public"."oauth_access_tokens" VALUES ('729be51209e5506c187b0b7ce7faac5c53e3550d8f5b6183ccd855ffc2f019d99af46b9699d39eed', 10, 2, NULL, '[]', 't', '2023-06-10 15:29:18', '2023-06-10 17:06:09', '2024-06-10 15:29:18');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ec6a2f27ce2a5af499a8a7e70fe849a5819e03f43867800d62aa5788f1d3313be647a0390a6c5f24', 24, 2, NULL, '[]', 't', '2023-06-10 15:51:01', '2023-06-10 17:54:27', '2024-06-10 15:51:01');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1f515f081345922244b3a0ce40945843ebd130fe9332464bd98f1d5908ecd950bde70c339b08cc72', 10, 2, NULL, '[]', 'f', '2023-06-10 21:24:09', '2023-06-10 21:24:09', '2024-06-10 21:24:09');
INSERT INTO "public"."oauth_access_tokens" VALUES ('5963cdf57e6ed87e70cfc481f89eec0088092f5cc4e14041279c2555910ef39cb02645c78515522b', 11, 2, NULL, '[]', 't', '2023-06-10 17:06:15', '2023-06-11 06:13:07', '2024-06-10 17:06:15');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3997082e54a52ffa83077b942deae1201c9818cd25e59f5ebef5aa53417d50fd5c6add525fb68ba9', 25, 2, NULL, '[]', 't', '2023-06-10 17:55:40', '2023-06-11 10:43:55', '2024-06-10 17:55:40');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ac2cc08e0291d7b825b025f264a6ad9e14985f996389b429ea8298bb081d66fc80b8c7137e27d51a', 10, 2, NULL, '[]', 'f', '2023-06-11 10:44:52', '2023-06-11 10:44:52', '2024-06-11 10:44:52');
INSERT INTO "public"."oauth_access_tokens" VALUES ('bbbd8e26761e25f33282145205303ebfb36209ac7cbe8d7321b4c3721a6b7f6f2b3064af1f509fb9', 10, 2, NULL, '[]', 't', '2023-06-10 16:05:00', '2023-06-13 00:33:01', '2024-06-10 16:05:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('634dc6e10644a1ee9624e6497e16fbab471af4afaaac37cd0656dca7a55a9439d719f5ab9b83c5f1', 11, 2, NULL, '[]', 't', '2023-06-11 06:13:20', '2023-06-13 01:55:57', '2024-06-11 06:13:20');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_auth_codes";
CREATE TABLE "public"."oauth_auth_codes" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8 NOT NULL,
  "client_id" int8 NOT NULL,
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" bool NOT NULL,
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_clients";
CREATE TABLE "public"."oauth_clients" (
  "id" int8 NOT NULL DEFAULT nextval('oauth_clients_id_seq'::regclass),
  "user_id" int8,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "secret" varchar(100) COLLATE "pg_catalog"."default",
  "provider" varchar(255) COLLATE "pg_catalog"."default",
  "redirect" text COLLATE "pg_catalog"."default" NOT NULL,
  "personal_access_client" bool NOT NULL,
  "password_client" bool NOT NULL,
  "revoked" bool NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO "public"."oauth_clients" VALUES (1, NULL, 'Laravel Personal Access Client', 'I3O0BTdjvYdZA43pnMpfXIi28Yks1GWZEVePn5Kl', NULL, 'http://localhost', 't', 'f', 'f', '2023-05-16 04:13:20', '2023-05-16 04:13:20');
INSERT INTO "public"."oauth_clients" VALUES (2, NULL, 'Laravel Password Grant Client', 'kmzFSJkcgGJZfuXz10mzBwmGh6U2YuzwldnIe8bH', 'users', 'http://localhost', 'f', 't', 'f', '2023-05-16 04:13:20', '2023-05-16 04:13:20');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_personal_access_clients";
CREATE TABLE "public"."oauth_personal_access_clients" (
  "id" int8 NOT NULL DEFAULT nextval('oauth_personal_access_clients_id_seq'::regclass),
  "client_id" int8 NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO "public"."oauth_personal_access_clients" VALUES (1, 1, '2023-05-16 04:13:20', '2023-05-16 04:13:20');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_refresh_tokens";
CREATE TABLE "public"."oauth_refresh_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "access_token_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "revoked" bool NOT NULL,
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('9672ba15bc0e845fea49ee7f38dc7acf5366ebcdf4b3893ab9088b5bf892a7bcfbb39113dbd53f63', '111b6d7a2e53482ad6fc7e9d91427edc55b8bcbe19d250e3593f527c346fced3e5b3a74cbc4ae996', 'f', '2024-05-16 05:55:29');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f61e98e050d51c1e34772a322c59152303f7696738ac8958c58aa693af9b72980f7f28378cca060b', 'caabd576f5c2ecceed87dcd09aa32395a7a6790c818dace8d406d7721147c85905dda5055ab9410f', 't', '2024-05-16 06:03:30');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('6d1ad02bd7c8a014dba011a64bee20257400fdf41359ff1befecf143c8072fea7f5d562f25948a6a', '4b99911dc90477f70e6fb4420bfb722edf198f516046311637f1b3b10ec53d9d15f18764a5b23373', 'f', '2024-05-16 06:03:45');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('2887c4c0d67cb0b496137fe347e77efc03ec2b0c45f0c38c61a54098828e94ab475dcb5e8e12b6a3', '9429c599c9f72442fb82c386021c99f09c928ab884becda5062ffafd349b0cf547679440184f5a4c', 't', '2024-05-21 23:35:39');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('5e90646f03eb9a911efb72f0b993a5f8aa474526a0823fc125613abd041b679cb00f3245222a5620', '921e18f1870031c1e228764503b79b0032ec7621c90ec81ba8c874a624f73875a559194aedab82ee', 't', '2024-05-21 23:36:07');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('21379910c2e56ad80a9757f1882b96625731216e4083f3af86a8dd9b504cd8355fe1db6f34b11753', '17f985c3b675b842383865690a0034fa8ead5d3c83913834b02472f5df1ae8041506e18ed70e0701', 'f', '2024-05-21 23:37:38');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('088a52633b2eb4d7e43b810b25e2467cc934f7702919700d8482b766c34ddfa603386cf2149fbe89', 'fc771e46fb24538ba5fbd36d40f2a6b21b2f2812ec31f85bc88dc1149b2e8d4edbb2216d56fc926a', 'f', '2024-05-21 23:40:30');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('fcbcd90cdcf8e93a715191541bf3385de723795e98373cd2f79d3727a97d51b42870d53e0625b6c4', 'a1e9e85d67f2368069b0348b3dc04244c36f3f6dc4249762901fdef3bb4ecc535eefbee8dd37359c', 'f', '2024-05-22 00:25:24');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('282d89e945907bab6d794f76e883443f640965cd2cd566ea76f801e73d632ffbc381bd64cadbca5c', '0241158755fa946ed5703a0971070d754ed4dd90b425aad1f6f3b525d4357b8488686ea1da20ec8f', 't', '2024-05-24 06:44:30');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4cb1fe9e29f53a6840d39ec7c282422cb6b71f38e1be8bc804786c0550e98b011b02c9bb4c41c452', '273c2ddd14a111e7e22795c037cdc91a94df5602d7d34b097646650c094cf01eac856c9f9c797d4d', 'f', '2024-05-24 06:44:50');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d0a5377369440e85f9dd35bed1371d1ff573fb3f3df759d6c1ceed6da85a59c793d039d4a81f16f9', '37427a81f9418df1ce72db9e9d0e0183b3609c23302f3796d81727b89eb89b67b141901e492185fd', 'f', '2024-05-24 23:59:52');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('2492a177e8220c8cd39e9968da10fb34bcef138f055098299bb159195467024fa95039b201d0c71a', 'b2f1f57d5b79c57926cc412083e582d55516139e17a7c533c4714cc1c18d8cf8a5e12820630d08ef', 'f', '2024-05-25 05:31:56');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('53f9ea7edbb0c5c0b1db4b954cd5218da9876421a308c99223bdce0e98981c14f98578f7b3be2296', '3cebd35731c1327b89bdc6fe4481776575e512389041118729ab2e34e2ac7706a4a25fec0365e9fd', 'f', '2024-05-25 05:34:06');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('afdc497dbba6c88dd21ad512a302efc29e477c3dc8a7d6327815a84d2fb3108f57ac667d3b6be7aa', '049a108feaa678a1deb4ce4b77ed6b7325f646a561c233d4d4d4e2b91a7c549705f42d29e21b782c', 'f', '2024-05-26 05:06:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('61d946143761e741f5d264983bafccedf760df3d169039aaaa2887b13cc9d9cd306dc1756b86285c', 'ef6223b423e1cffc4137e57c4654a8be4275980a9888ef5f20ee2ef8176139ecb2380bf0dd4d6ab6', 'f', '2024-05-26 11:16:43');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('60bd86de15c62b260da4e83650376558acf6adb3300681d4885dc622ce8b1f1fdd54dea89b118b0e', '02af5d48aa420d0c965bd38a755a776b1005784425e056aee92b2626a95e415d28a643bb50c96730', 'f', '2024-05-28 10:57:35');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('765e2e94f6e913988445cc63b76a7a95268cea53023c4d506dc45e90f6a30a9df24f3b598f96fa8e', '8e096a29064aff0dfa6acca5cbcf9d69be03f62b0fdd2d3d5d20e578a3c3f1573471a7c27ea91da3', 'f', '2024-05-29 04:56:25');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('b02588b6214683bb074f77bd963f315278398dbeab41cce18cb36f563c37da379bbe4d3614af66ef', '683dd4e607ebb5c54834e6a03252bd8bc36ee55ccc9c973be6132ed7bca5c220763c03998e488735', 'f', '2024-05-29 05:05:57');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ec65498acc74c58ae908208b3347d3105709e4192e52832c1b9314c0ed9a222dff540b0f047b002a', '2baa783c6055baabd9f8c6696664b718c01945a967a8db1bbd543ee069d8e14ee8b668214864f593', 't', '2024-05-29 05:07:54');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('57b502b6ea1d38e366d6498da85755d828f5d4c0379dc6fc2a9aa03806a46554ad9a821201e6ffc4', '0bee08b98ac37ec784e0a6a25ab30ff88c12700556cd91258aa8b70a10df8d96c40f97c07c5f4c4d', 't', '2024-05-29 05:08:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('962b05a1e9428eedd2edbb81b55036e0cd04622abc97abe81514b7069f28bcc5d0f7b77cac03d279', '0d65dc9ddca771da86e531e1b1b5df1d1ec3d63b57543f6dc344e297f3ed85e411e62d385933a9e7', 't', '2024-05-29 05:10:05');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('46dbe758fccbae2239230d287bd845fd5d311ebf7daef4b7948bfc35a3812e9c448b2ce7d29e8bd3', '6d055f387eb7f49b832170c71fc5912dc7f7ba1d00f51eb854c6a084c8bc97b810f62a28e36da763', 'f', '2024-05-30 01:57:36');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('80f2a0812692f177452ad0800a8347bf64818030cf27fff014edd67788b2b4be3aa614a36b718216', 'f65d66321f7d0e8437469a1ceea1c8599191f97364aed230c08de6944c19e99389ae451b36028890', 't', '2024-05-30 02:37:55');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c43fe54b8d9b248be4bec5737b9645deb266f4a125910822020303e9f9aa734ce43ef600ba9caa74', '0488dae90c49b8e6a71cb095a6d04a55a4c95c88768a4e53abe48f7e2fb7b3e3dbc593aa1d9edcd8', 't', '2024-05-30 02:39:14');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a3bd4da655b7c9b1aa1f8f1aa48ef36a4c6924155d849b3292ef716554129b2206d6f12353add53a', '0668b2d7ee9fb0528fb047e098feeaac11c518492c03dc4eca7f47fa56f17d6a95794c162cf16da0', 't', '2024-05-30 02:50:54');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('8269591824c875c6482b22f2176be87131a32b70d2c29d771f2eb2c1dae2e369882001d12c5d2b68', '243396d5a62e212f233ccca96e7163258cf84adbc8e4380a5e838deb90d034ecd4751467f35f6854', 't', '2024-05-30 04:23:21');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('27d34db75df6bff5e543e356b9f083fa5144a12b5bef7a2b58385bd83a210c979f6b7c621d46fc5b', 'd282e5acf8d9f03a849b9c7f1c655832b501a9dab9e8a25809d92f1b0d04495acdccda76d9192662', 't', '2024-05-30 04:48:08');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('938f808338ab4dee18fe20e386a5a0a4fd55969d9a58cf641756f2fec629ba482133c10dab34bce2', '3671fba14beb3ec73c8c435592ff63770d0d66dd9737245bee7006d9c9631b9f9bdc201986603ee8', 't', '2024-05-30 04:54:44');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ea1c82287ff05ccf57ede9007d7344d1c42a4ae341739cd93613a623e028f20ad2fca503be2cb9d7', '37f69b70d64c8c9c5601c9937e558190db24ce97548e7dced2b26d45943bc688ca46c916d5fcf810', 't', '2024-05-30 04:55:03');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('69db062d3cb1b08d3b895114580467394c41f83ca950e89f027cf69756bf95a3de35a8d7055db3c9', '71ebdec3cde71c13b9ae8ec4e34a48ac66ee20abbc3f6c0542c482595f202c94477fb6d54ca2f6d0', 't', '2024-05-30 05:22:59');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('accd1628f36d62b69e1a4d703d9b73e8c32b136753d98c75ec31c168d246670d7403c1e7ae0a8788', 'c09228f725d22d6c6d2d48895779bfdb5ce9d6c90ceb8bdcc64c9c4a51ce8d5eaaca5e5a81de7f4e', 't', '2024-05-30 02:51:25');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f722e1d8e7d0ff1aaf64f3ed64aea19ea894a672b3c909899ebb8a2756dd436e4b29c8213b3bd7e5', 'aa7e3dbc85b307fc668d8562a99ee0923917d74fac7b18036b77e59ed5f28a77b6d016cc3346cbe1', 't', '2024-05-30 05:23:17');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('b8ece0c06b11037a96bfc4471f13bef537f6acd553999adaf4ce2f155fdc9b90c73af7112a2d17df', '1152a53d6833ce0f49b10aa5fb320c118ad5d4aadfade3cdcf8ab8dcef2e3b360d9fd9dea629b9a5', 't', '2024-05-30 05:42:41');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('93ecbc50192c7d66f0b17de62980b1ac90736f18e3edf9c2898237caba0b4ac4514726cca678a029', '31ca4bd7370eb7f58e564ca127d1fb413e31320a8ec80ead04ba855208805e5202afcd5e63fa46ed', 't', '2024-05-30 05:42:58');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d4e5c1b4c1c140466c0b60f44d1040dba76ae3d0b957579986c655fff2ec0c3be88be069b306b899', '3e194ab5e55a0c46d04471336564aaa4ee654c53b93dcf77009c2c2ff53de8ee40dcf56581b263d1', 't', '2024-05-30 05:48:35');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('9d3571849b46280059c237da9d8f891bc6e9138fbf6ea46fc9d2d71ed178be88d3aca46d8873b234', '928c014b36cbe07234390f91d352fe524e00df03875462c665e797908165dad6a9f4e2a007957b4a', 't', '2024-05-30 05:58:11');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a5710d98548ce3c7734399f567bd957f9bca0021c4fe19c8671557c0ca144edc17c7555f26584f58', '4824b41b80aca4a48852e33b361b60646c2fcbce58b9bd29717d085978cdf6f2e3906dabbe2b104b', 't', '2024-05-30 05:58:40');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('9ba0047a346fb1d44e44b633537bd01d656e6f5a979ba6716b4f3449408564b8a3135994229aa2fd', 'd48ca4512617621727cb7008591799187e1e9fc2fdaebf700d0bf02d2f62ea4983425b56690a753e', 't', '2024-05-30 05:37:57');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d1a0b522ce03287794fa936b21ed59a8fd86db88947c9bbc5020d5036f4bf8d17edbffb0b738ee68', '164744a4e9ca8358c8c6c5ef63c7b63d4566bd1ebc181ea7a1ce322031a6bc7a41960a9894d629fb', 't', '2024-05-30 06:03:18');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ad9070ab2e276995cddd4f528d4d576073639d5de7ca129f1fab26fb467acb4ebe7a12705b8d11a7', 'baba41fa74dd317e1dfde97f7f4ed8d31b194f974b3c7d8ef1683d76bfadbe2d91cc2abfbb48b360', 't', '2024-05-30 06:09:56');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('e39d5f07c663504de1481201d29b9ea7d540205dc7eb0155d34d4a4bbc1ed514d11aa65550b8c160', '15084b5d468371f840cbc09f81f2a00515bc98e0a266da070f8ca2f762af001141e0dbaede127917', 't', '2024-05-30 06:13:42');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('15fa053ce2d13fa85fa3f6bcfb3524036aaf78f710c531705577c5c1ccced2c0122d4c2621ec9807', 'fed329cd735fafc2796cd321f0c2b53e15a616954bd961b4d5dcb5e777e82c2942bb26bbc603f92d', 't', '2024-05-30 06:16:59');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('daf90a3254a2591dfbf1b9e16da167c6a6e56056033ac4e97634ed9ae0f153cb915ee079098884ce', '73ab9b5804297bda113233f4c37b765944782d4ebea5a6038c362a3ef7f578807f948d24ee3896c9', 't', '2024-05-30 06:18:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f63562a7e424da29e5fe027febde19cfd0969eb8ef45e32a5be84ee13e00eb637b98a2caf625d546', '1d1b561f8a3d3d166b7f1eec13b512fde78f4e2b7e5ee8c16e0055e5fd618d5ec26295951583bdc9', 't', '2024-05-30 06:24:13');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('7d5c5c551124b8f7baf5622fc56ae74149b4f9bb7c0204d4d94949497752a2c3c91dde220f2afeea', '0ef49a508ca0bd00146ce8c50b18895fb4bbbf96c0a31fd2205a7f98375f50964559cdde7df95291', 't', '2024-05-30 06:29:04');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('297fe5d39265bcbf45d98f9582ea0bab16a887533d74e45a1ec150e1aae186473c96680d168f0584', 'b7f46ef1e68c5c5e6feb92ada7d4b904e71e34fb2c6bc5272aba69cbdecc71cb80cbc5df6fdda3a3', 't', '2024-05-30 06:33:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('852f9659cc74e586c10ed314145cf1c25e2a9e87f89b5a00b147692abbe2dcad806ed7877cf43b32', '2fa6e53de9eb4470a73fea6945a1524d3303234bddb2cd100d4eb6de0a67ab64f27c88962ecf8040', 't', '2024-05-30 06:35:51');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('5714a3b6c346229fdb63b2b962c65b686b309daabe7e1e2f60506fa67857414faa9085b0823686d2', 'a7acd75efee544646c7642dc6cee4022c81eb2bc784906c1e6148c47c35d17d18c0b9b6655c4b9b4', 't', '2024-05-30 06:49:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('0b10ef89536a61a436788effbee97d9322d975a3811e8199b32d8621c7c719bba7884f0ff6df29cf', 'f256ef9d36c30a0eca6a632a9623ae9aa0948fcb096d5e9bff02390a3c70a205db82cacdb1ef07fd', 't', '2024-05-30 09:57:41');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d544a1f31d9da000cffb3f6cf4f5f35f63c1e53c4e8049170db9003781d58b173899ea6f2566524c', '24bc5ddaa1df4f0ac4f60e832958487fe5bc12e11ad4612f0bc3623e895eb6da942299ecce7069e7', 't', '2024-05-31 04:49:52');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('50a22dbf32eb19fb2c1dfd03b99984f1e03ed3a032c1b6f84b1fcd8cde3f906b35c644fbab657520', 'd5f595a636109e949daa1cf3598d21d7529ce933f30fc70afe846d4b124d9ed3487525a27e18dfcf', 'f', '2024-05-31 06:54:08');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3f327afada59e42253647232b93bc7bb401d9640d6a73cb8f0d84728174f7e1db9e24c9b9eba70e6', 'f0c8087e96a94ba6287f0c234d336a55111c0dda184cc4048412fe2e70f37292473c998428b19bba', 't', '2024-05-30 07:05:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f94961b1c3da7e5f54f6534fd42ddec0e9346a047bd28f8362ae9570479e533547d84d3fbfc211d9', 'a0090f6e97d4eff3e36ce6407e0badab23ac4d9ed9c80ba701bda51e61f77a3355b41622a00426e0', 't', '2024-05-31 06:48:52');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('b0c01232332be00e0249999ce8427bbf3d9133d8d101743f4955585bb1edf2a2d1cd0f024052f508', '4c069209c6fd77713f199713208aa9a43de8ca6a2c01e756cacf1c457a06bf7b8e2caea5566fa0e3', 't', '2024-05-31 06:49:34');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('8362e2b45774270485e8cef9cf8f45bdd89dfaf5c51a54bfcafe74fd7bd8c8c60e428a39569a7579', 'ae6833f5618f5c1b5ad2a8f8175565ff8c54976a0d304ec9d9295cc709bfb06adf9dc9c685c3eed5', 't', '2024-05-30 06:56:19');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('57c1d4586082bbd8b29dcfec759cf345c29d6c4d2f57c4e32bd6cebc126fea6417482dcd10a48a51', '103353777bfd011c79ef2f21e4f20352f4a62d389021078d4e0a60e378a15a16664ba6070e6b671f', 't', '2024-06-01 01:29:50');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4886f262275364088b3e55217390c6a197c56b5ebb239e3d001d0631281f8ac065e2252d38fbe5da', '42275bf1e8a99b27fd28ba5009807b657ab89f94395ce34c66401a104931dc0e4973a1df701f9a7e', 't', '2024-06-01 01:31:39');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c015d2535a104cf82e900f2aeadde5dd5cacf171d9e493b3161331f68f0192668ba713b86b5bffd4', 'a2784202867db360ee92d50651b85d469c8cf47fb64785bc781bd0c766695b08170f00826ad91a66', 'f', '2024-06-01 05:36:00');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a842f066b7fce08ad62d21abbdf3adac3ac8143054b238df3ad453ed5f3605400fbe3625790755d4', 'd2069d92eee5d5d070686a236927f4273310e760264cbec41ff2e680ad242e37203021e73a6f9cd1', 'f', '2024-06-01 05:37:54');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a5dfc565abf49385f149c85c88e2e848be77b53397fae952ae04c6eba0624899be48116306b49916', '10c270709f1e58d408ae2acb2b105a6183bb06e1371983d9cbdcbf9ccda2b4286a89994e7900a89b', 'f', '2024-06-01 05:45:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('b416a450e5361cde667ed912d5908be280650e70e9e325c512f632884becd7fa7b2df1021ce934f6', '3abb05d41d4e0207e26d446e88c047e7e866d9aa6d899d03b22a5f10009e32b5f213073ea8fc8935', 'f', '2024-06-01 06:50:34');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('78fb3a5b6775211840bcf2393011ca190e26e9f5cc9e762fe12b0da3449aa2aa7018104968f7def8', '658fa677e923c1a22eff8e46c6b0f1931a1b2ff90e83be652bb77f03acd60887b325e028cce4bea9', 't', '2024-06-01 06:51:13');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('591899381c72708bb230df244b7efced67e86000823c30f8e90abc92699ee4ae79ff3e3eace7be2e', 'a26631909536c3bbae38f140ffb0f78f16e171db8f8c56b599652673ec8a0a9440e516573d4e4a40', 't', '2024-06-01 01:37:15');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('14d9e71578be77401db532c713fb1337b837c906621f336259c638200f4ad30bb650101270ebb134', '2716d1eb037a3ec5c8d6a879f1af4b0be303e46ce3a1f6249d8a59885416d996af91c95c8ffea9f4', 't', '2024-05-31 07:07:31');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4e672bcee034597ebaed31c6b058de6bcfdf5010972c8e2264b565e51bc814de2ec0113fa7b9ac66', 'a3b6d414a74f3a2b8c7db99f210ed8a3dff9295c275d60188c034410152db399a652e92ccafa2e8d', 't', '2024-06-01 06:52:56');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('7db788cc2ba1d180805ce5117afecbc36ca738ebef9b772d1b63198051d4f33470b358d0cd658b41', '4f2f8203576f4c17205c417a629b64e28ef7ad26abb7f22bafe2093575725600417d0c5848539530', 't', '2024-06-01 12:43:06');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('23ce48cb36f9bdb395d8fe7b1cf3e94f6f2d6a014a9354b1421bfb03683708f58d6ee1ecd730b67e', 'd2ff11f1b4dcc0a5895f429d67179802066235f64beb50ddb6aa75f0bed6892342df90d93aad6d28', 't', '2024-06-01 12:45:55');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('419daa12b31672a14571544f096f191dbcf788d55cc7a27866156c51b7f5d82ae579927f6a7fc9e7', 'c712fbffc1728247bb387b25fef9b0d534dae1e66f73d9266e592460327245bc8d55f200e0634240', 't', '2024-06-01 12:48:10');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('6b9b4ca3add4bf5a0f408e21e85a0d2483ca88b13a465a70c1d8e0e3652c851a0d403e205a80a5c1', '6d93623113dcc1121377dc7cbfb0f823a3b4fb1b5104c1e73da9a568e4ce4639238dcb05e27e87e6', 'f', '2024-06-01 12:54:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('7e9545515cf230e5ab8ec22126c96ad05a8c72a8f742ad79625d773f594ce55bdd8a9c3308aeb33a', '6c4f3a5d48f85f8172789826b7df1f811780f580108bd6f5f8ba68ca152653e30c488191866d41f9', 't', '2024-06-03 10:33:50');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ed3f7882c6a90a361f3680d60b32eb8ee5b1090b0aac9ccf35e0865acbba4c5b6739473e5d1884c5', '57a496a0aa3c46d99fb98a2acf35c7a678fefb3113edfd2804b56897be94d85dfc5b6391e9d1ca3b', 'f', '2024-06-04 01:14:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d517f2f59ff510215b90a5af01c10e90acfbb3e84431b8b3a8942fd4f3d5d98049eeb0ccad368178', '05dbed11b8ba662da4bd7a0ed19c22771318a0b8e99ecdd3eebac5e6a37eebb163aaa4d9efba0b90', 't', '2024-06-01 06:54:33');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('0142228be70d1d600339518f72de85d18e54459a38a8e5638eba4364981b6969328689926f2ebca2', 'f214b58585c1c03b27bc6c050c6a224e061faf20d99efc8ef378e841f88ce097b78286b8ca914232', 't', '2024-06-06 00:11:29');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('aaca2d50c851dac4d827b6095e95dd45527527abb1a09adc8ef26c07f59cfe8b195d81b1b6f6a2c5', 'ea4e41e539bebdcc7822d1552964add4ac60975bfd5bb2af0bb50f0a0f820404071edc632b5daf2a', 't', '2024-06-01 06:48:59');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a742b726869db300f7bf69b6fcc1fee783ba18d80fdba567f6a157e61050d93a0ff544aaad4a002f', 'ed360ecb656726ff3842682766bfffb4a01a044a6fb5f6957ea42ff681d63e5221c14883d49e3257', 't', '2024-06-03 10:34:03');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('19423a28708d9d773c5f7c42b578e5e4e964873e1f139f320369c08b1015e7d23c0a3f9b6571abe6', 'a8bbbca9a6c1e76a6e24a8531c28874b849317c1f4fd3d0c083a7b538cad61f44dc908b61adcce4e', 't', '2024-06-01 06:53:17');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('2d3b0684c19c98a45aa845c28d7d514110d0f1df1c620829a3ad9694facfa5b085c51d0e26673d7a', '5635ba39559f30ba1df029cf902135722da957a10f553c7504878ef6ea2a695a5d5ab38c63a66ad1', 't', '2024-06-08 03:30:08');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('1f7d9cd718031c01a0953c95c38f04d0e2f639f0ae88f612780224981eceeba2ee5e905f30fd01be', 'd1ce0ce8417979fca3919d6e909837c7798c12ffc8416836dfc3cffbcf3c2dedc68ca17bafc14895', 't', '2024-06-08 03:32:46');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('07e7060b88f38fa30716c40964683c45d69b47be275ea52921d20a74d1722749c84fda0f2a356211', '35230df09a9b39f144134451a85c82800596376695e4301a609a84a916583f1aa60f55eb8392a8c6', 'f', '2024-06-08 03:33:42');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c9da0c53a6d561343ac105e8b1e962706e50a731c6a4aa6f725d979121d9f018b3061c9f603d596b', 'd73446dd33d49ef5729b36aae17da844614ca2f7f020b36deefe6a7d604c82f6a2f7ff89f0c129d5', 't', '2024-06-08 06:01:37');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f039c0c6dacf0ee3e82bf03ce6f67dfc1b3f5ebf877b52d94167007f0199ea7626403b72435c5739', 'fa3cb764e8d1b9cb3ebcb2f65fa2b4429d0edd9588d643bc2085164293973a7978a9b774f4fda216', 't', '2024-06-08 06:04:45');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a2de90a6bf156965cc0c751e9ee9dd1b832b6840146b7b82b622099d902bcc5d448ebdad2a29cf1a', '30d4d19747cd707154b81ee3d2bcc770843f8bc9699ca7760bf7c500df7fc201f411d771d83662ec', 't', '2024-06-08 06:30:35');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('8e3c0edd75a1d8bf8e96379870cf6fcc690a4fba1c9a7a5228dda81aac51e5ec8cb9dfce5eb26fd5', 'd5feaa19a4a6b2cc67ed9a59b6445b3491ffaa428e80c87a2b44c477472069f7c318fba963a5912a', 'f', '2024-06-08 06:50:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c80e5fe163860e284a067840aa3142fa8b1fa9cea1093a4696d0bec04a2414aed3e28fd78773925c', '328d5b8cede825b778b2967831671ea0ac1ff72581f87a838d506cf90b8e2eddb4a1cfce047078eb', 'f', '2024-06-08 08:02:02');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('46d063b3aa3aec5ea6f96e98062b60d97d3ab0d2f02cab846cd714ee197e04c8f33d43514252d4c0', '1acab11c1824eda528c002be5924cc435951d4a440c6661148b93668d1b71db165e4a2050531372a', 'f', '2024-06-08 08:40:50');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c23448f3827d18ffec492cfefcfe1885a206e72ce04969454aa69812767090218deaf8cd3f5869ea', '5b93edbbe3fc34485882fe629041bc90c0d985b1de171a022e0cab8ada9602f32d7e5a4e409b1f43', 'f', '2024-06-08 08:42:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('df340a2e7ee302ff37a5b9995d5d2fcfa39f8f398887738c0cde93f1d8a624678dc49469685fc3c6', '504c24fd752f1783f2fc1b83c46e8f242937b072d0a11f033d8c42a40f8f7e447e0f2ba8bd987b26', 't', '2024-06-09 19:31:54');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3093d7bfec3f86c8f0db7b6d4f5c7cea9de0e1ae71499862f1712c396f2801ce34c449948ea3dc9d', 'c57b16325dbb67762816e24f94523e083cf137d6229e1e6ea7dc7881239b356e71320f3b5a9db74a', 't', '2024-06-09 19:35:49');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('6632e8e74b5717c7cfcea3fc2173b3ac1107e5552ad611e3d6698bd5bb11195b2bcaa919c1ae74e0', '6156be3b2c26d030f8a91140526f2711c4b2657ebbef9a9d25193a754e914395ab0fb3d5cf660ef9', 't', '2024-06-09 19:37:52');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('2a3315137a0050e771dbf50180de61bc79de883351cde107fb8e8ff4c020c6bbbf289d837e0fa642', 'e64cb124456acc73e9688d7dd2ad52286dd4227246619af5390eecf58c93bdce8a9d2d3417984c60', 't', '2024-06-09 19:38:06');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a71d788eee8d3750323e68024c7e37e1f87d9a6859b9d07b87b5bb59dd1eab8201ccb3adba99cdb5', 'fc20d4a70c1cade3cbb7f70782d378e8c2dcbd7988257e1e0025f374191df139ab159a991216c3f9', 'f', '2024-06-09 19:38:41');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('74362a7f6562ae86e3104bcde2a4449c6a6aebe9d3872896b02270b84c4382d55bac8f312be8ae43', '0760a64b2bff9a49f262fe06270362755ecec858bb5147ca9e109409603f248970970c7ba8485c29', 't', '2024-06-09 11:16:16');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('acdf4c6fd2088fa2f7db8c8d1fa05799a692edbc4502f09b7d4f12f0914403622cc58a20ff051b08', 'f179a559c325bb8913c3b7590fab1252535b4b4c205f2f178571d751d125ac1c4149cf499e84fc63', 't', '2024-06-10 01:29:53');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('10533fdfa7ea98a9555d729a92e0ada78ba4c4cf00e07992da6dca5c016b8c039c5acd3acbecd1d7', 'e8e88f79b5c49d16c54a6d8f9ff0223192104d5d2c6e1398b0c21336a5637430e8adb0b83e770379', 't', '2024-06-10 03:06:48');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('06162337462482b5b76c81dd11dfdfbd8057d1e33c78181d51fd076127db1d3a22d874ee0479d36b', '99408c9ef4d5bcb1051d0663040efb905a7febae4a84c25845eefed77269567508e77ba44904e6cd', 't', '2024-06-10 03:07:49');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a960ebb66673a9e2aecf921daec0de7b1667d5815ab4694c42e965ebbaadf7d86e1e46dd24069ed2', 'b33122cdb59f7e2f0ee0eec662ca93df80421248c7f205126b66edc1a189520666d51b86e81f58fb', 't', '2024-06-10 03:15:09');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('0279ee2367ebff9a97a27c02650a34c9666371e1ecc5554fc9d40afcec0f2140df376f379c0bf9eb', '06974e4e9f5f01d5a30a71a00bd2725fd45c691f8555669545628972842f41b71539e5d8adacbdd3', 't', '2024-06-10 03:17:27');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('0dda4b5bee7b4d1f814b2bc16d5d07fa7b34580ca2e44b26a539ed09489f1894578612c29a6c54a2', '6a8580dc38ec384c7a37b6453522744f6dc8ed1ab86948af9a131d8bdc72356c502d4cfc5b67165b', 't', '2024-06-10 03:17:43');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('6b5734cf6c2b312500372a43c44c6038d7b7a85c7fbdff022ed0884b558c0d1795011ae1fa966988', '2af3b76dd8a98a0e6553c01010fc74f6a97fd67153b0f9f91d497963daa19cec7d46ea85e28876cc', 't', '2024-06-10 03:22:26');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('1f287c369c7e292b86d0d616879e8436fd77c2f47a5986591a8c8f3bdcc106e3633ebf6db6b7c26f', 'a062cb137110f954b367c7a9ba0f38928eaa0d8caae614e339ffb9dbd774b8192da34760b001382f', 't', '2024-06-10 03:25:37');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('10da4cd9a5c2610cd068a43fe5b0af02251c5581aac379a370b515bfeac30e63499465ae4fa1084d', '677a297f5bca4a2a648e0d0446b087348f3353c3396946c2f4dfc04e704891839c716d65b9f57710', 't', '2024-06-10 06:09:22');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f51e97c755081b13772f971320adaa0f227e695f77f72fb18d3931e72359ce0099338845d3bc6ec5', '4d08aeaa06aa01df692e4f9d07047d9d7e356a461921e9be22ecaf3d137cc8ff7750bf6899ce2c36', 't', '2024-06-10 07:05:23');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f5567627303e885e1b16c8fdc1c47276adbd13bf93711cdbd95b54ed0b9676fc7eed30bd389082d9', 'e221d6098b0d85450c6d571f4a967009fe31fb0427d6f33140fb8c0ccd50d550fbe408ebe3bc46e3', 't', '2024-06-10 07:39:19');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3031807101bd730dcb4604147c345e632658d4afa8464c75a1def0111367f948da8a35d8d8af9dad', '7bcbae4126be1262a6b62fb31063d1655dd1c28a3b977a9ef700b73b4510c3da346c531501114b4c', 't', '2024-06-10 11:12:16');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('0ade5ad8c2cc663beafb743e59b3628a87000d45d3d02f1544b85db67912528abcd2da6311a7714a', '73d99154b3f19d653faed111f6782793aa3f4553d5ffa8fbdf59c125691fb3e03ef4af418b32afca', 'f', '2024-06-10 11:35:11');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('1c6980e3b27f2f4b7ea0ee4642293ede1e66ef9e24be798e4448ffea668218a46eae523b9728090b', '2d6cadac956043d689dabc555db465c89e324b12d2ec04bd34b2e2d9bc851ca0546dcdef1fcb385d', 't', '2024-06-10 11:12:40');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('26cf36927863cfc1fda269d4ff53a1858f84320fa8dfd35e487f496cf670d5f0a218094bb7741e18', 'ab4e64d316f4f2729cc91a4bcaae3e6d50be7934100285b1579004db1fccb8543179dacd847cc365', 't', '2024-06-10 11:36:18');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('bb01164b8dce06331c9b104986d1ead5cea576ce264c98b667a4d5daa1d3e2e2063b414ece9c54e6', '07d5549764f86630d4fe863db28e91046b8d173535d6ac0df7221f4a817bbd1e31d1bf039ab5e861', 't', '2024-06-10 11:36:37');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a0a4cdffdc73f2eea83d9bbcfd5c6dca2bd4915707affdb446129b5f6d35c7065061b2f7c2714427', '60502b20cfe17b9ccbecf83ed043a31ab9495c4eec27cb16f508a353e9d663cc149587ff31e9d199', 't', '2024-06-10 12:13:38');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('7593b19de3e8d85393807a8a8ff0bdbde6dae8ea0883b3fef372aeea7c48316172625da9dff90033', '0d5667abd77eefbb663d71ece05a3ce15e6d3be5c234df182236af17b8d4de7d8feead51746239fc', 't', '2024-06-10 12:14:56');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('8f98ebcae05d0b0fc5aa4db1a8bdf956ae767ca54d7940351913a5fbd29567ea4ec4992685fa8194', '284edf751d81f208edf191bb1a30560d33cb6ef1bee720f040bc6364772a6e334a284c3f1043b3e8', 't', '2024-06-10 12:16:22');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('e8b4f8ae27cdf0c056b62326c0f990d41eb022f9d402e3588a58298d29cb5b19f0f47a446bc93ad5', '0208d20add78f85656399337670d7c681bd786961239c329d0aba37c987896c1e596c065151a7dd2', 't', '2024-06-10 12:44:16');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('1d2a1a8760e63b8747f03ee60f0f71ff8edccb27700ba5d925cb4272df1d8a71a17656ae7507524e', 'fcd75cd4bbe3e54004f395d0bab4dcdd5a28c4d35001829f1efece9d183acdd9da9ace637fe7b75b', 't', '2024-06-06 00:12:56');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a9719ac3ce6b59d6e80ed6a341e0f4c90ac46678f3b6754ec18614c1864d93df8ab2883cb4a797f0', '82e7dc9779f37b9245ff4ce7a4cebafbdbd4fc33abbbe858555c23163be4c8ebc733576b241aa943', 't', '2024-06-06 00:33:08');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('344574766323213d00963c5e0668ea9b47d6005e98593cf39bf3f68784676af55039c974cba324c0', 'ac7e4f5cc1212c9ad335e88f3d1cfc1de25c2f55a1d0c78ec4b364d28ecc8e0b73e659822397c486', 't', '2024-06-10 15:28:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('760fa93aa9fb49cf59a99879b13fbf017c70ea3e232981bf390ecaafe4eaaa213f6829488b39fe51', 'aa4c19c6380bdb368b6504e7aa1ba333586536c926bb1613440d050535da5f848b5f22db21647539', 't', '2024-06-10 15:29:06');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3399f00a823cfb25f416520cbed876f3b50f4dce3b160843d1df7720e9897cefbf23ce6e75ddc5fd', '1f13bf0dc1b242616cb2ce88a8deced7d4b648d21ef7d4df376b458ec88f9a3946947122a0515f90', 't', '2024-06-10 15:29:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4c99bf11d98a4ca56f646a16e84507eaf81743504726bab86db8cf962fda04449cb98798d71f8ee9', 'e3ace9f5ae64ed61c40098cb5d08aa48b824159f52310b0f70cd6f4ad1d0320159c455c931e18fe1', 't', '2024-06-10 15:36:34');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('9d8c5211aeff29c793131fe0cfbeec4f0dce250ced249d66e6335ee297de866714b3e365f958a8e6', '425998c59be64cf0bdfeab720acabe76ccffd8ed5eae1596540a68470f6cc0baaab69ec46eafdd86', 'f', '2024-06-10 15:39:58');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c8de1303d487939b0dd107686d842120fb0c2068c68c6d0c7b3667cdd6be2c4d4d445cec8096e6a6', 'debfc9d34c7f57129a8224b143dabe987113eb528d3a60d2a558e03e62beae61489b1e160ac2c140', 't', '2024-06-10 15:44:37');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('333295fa00cced40bc44b8698d78ecd78e0164e2f0176ed221a62d465835626006dfb41625eba235', '6a0306869f3dd9461a0ada7c7ae524e3759bab07efb0e7c407c7bc66499bb632426e43a3776992ac', 't', '2024-06-10 15:46:19');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f6c022e0180136c5622758dfaafe2a257873c352842b4c21ba2a2ba0135b1b425454be2925d6ba84', 'db9965e54b0ad790ce9ad76b609c6fd0f00737b6b1f7a83c612200e3a487316501b428827bed0b04', 't', '2024-06-10 15:48:51');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('98080ac8642d1ef6f1220bb703f07d03868dd451e935d582ee9ec6abd7267467d5a9f3da34c0986b', 'c4adb04e708e24775270e123c1e9104f62264452bfaee96cb863cec7dc25d9f4b71f7ea070502541', 'f', '2024-06-10 16:06:24');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('240cc0ba96f437e44e6a631961d609d038dc91359773d6bb0986c4d7f0841b788854226e31547bc4', '729be51209e5506c187b0b7ce7faac5c53e3550d8f5b6183ccd855ffc2f019d99af46b9699d39eed', 't', '2024-06-10 15:29:18');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('881e4196e267cd0ce1b32ef883681b70fb942d3ef17cd63f562e2a640a8a046d473d3b6556458192', 'ec6a2f27ce2a5af499a8a7e70fe849a5819e03f43867800d62aa5788f1d3313be647a0390a6c5f24', 't', '2024-06-10 15:51:01');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('072a8f4b33fe1825875ac6377f1aebe73cc8227c943df889effcf26cd02d292059e695a27c12faf7', '1f515f081345922244b3a0ce40945843ebd130fe9332464bd98f1d5908ecd950bde70c339b08cc72', 'f', '2024-06-10 21:24:09');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4b48db7411e4bf3b98ccb6d23dfa86444c6bda5de16e6ce76ec2edc96a7b53e1919f5aa4def9022c', '5963cdf57e6ed87e70cfc481f89eec0088092f5cc4e14041279c2555910ef39cb02645c78515522b', 't', '2024-06-10 17:06:15');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('6b1eb6156c831d97877a5dcb326252f6e9383ea8ace2de4741bf5ec4671a2cdf11a78a0a20866c72', '3997082e54a52ffa83077b942deae1201c9818cd25e59f5ebef5aa53417d50fd5c6add525fb68ba9', 't', '2024-06-10 17:55:40');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('75912fd9142e41ab6799ce288dd5b3783f6d2ea851e12161d289a087e723a89d4500c8cc13bb911d', 'ac2cc08e0291d7b825b025f264a6ad9e14985f996389b429ea8298bb081d66fc80b8c7137e27d51a', 'f', '2024-06-11 10:44:52');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('660d2ffb37130724aec35d624e829f28c5e1b1b9732401cdf26b06bf61466c9c9454fc6418a1fd08', 'bbbd8e26761e25f33282145205303ebfb36209ac7cbe8d7321b4c3721a6b7f6f2b3064af1f509fb9', 't', '2024-06-10 16:05:00');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('57f902e406481e0c25ce313268dd0d7fc163b69b1c3cf38242711a9a7f2460121c8ebdec40539fe8', '634dc6e10644a1ee9624e6497e16fbab471af4afaaac37cd0656dca7a55a9439d719f5ab9b83c5f1', 't', '2024-06-11 06:13:20');

-- ----------------------------
-- Table structure for objects
-- ----------------------------
DROP TABLE IF EXISTS "public"."objects";
CREATE TABLE "public"."objects" (
  "id" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "category_id" int2 NOT NULL,
  "owner_user_id" int8 NOT NULL,
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "rating" numeric(3,2),
  "coordinates" json,
  "address" varchar(255) COLLATE "pg_catalog"."default",
  "address_comment" varchar(255) COLLATE "pg_catalog"."default",
  "inventory" json,
  "benefits" json,
  "hour_price" numeric(8,2),
  "minimal_autodeal_rating" numeric(3,2),
  "schedule" json,
  "show_price_for_authorised_only" bool,
  "gallery" json,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "moderated" bool DEFAULT false,
  "panorama_url" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of objects
-- ----------------------------
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (9, 5, 12, 'Офис/шоурум 8-2', 'Помещения для офиса/шоурума.
Помимо заполнения анкеты рекомендуем вам сразу позвонить для консультации в отдел аренды, чтобы уточнить все интересующие вас детали и развеять сомнения.', NULL, '[55.752247,37.671193]', 'г. Москва, ул. Сыромятническая, д. 10', 'Строение 8, этаж 2.', '["Столы","Стулья","Студийный свет","Манекены ","Офисная техника"]', '["Кожаный диван"]', 1500.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"08:00","time_end":"21:00"}', 'f', '["\/storage\/gallery\/mvGV3tFC45joC58wNBg9nv1A5GZJ0kRspTvsLAsz.jpg","\/storage\/gallery\/Us0kmqR5uEEAGR2tC9gz9d3ONP0dF1vJLIS3GCWV.jpg","\/storage\/gallery\/uQidaTE0MDzJX809tssFQh3CxRrKIvuyr7KbA6EU.jpg","\/storage\/gallery\/1P37CLuFjzkAgGsam0Zt3CEmbuWzGMocwJlUwysB.jpg","\/storage\/gallery\/8olwLtXLGVPEjZNXBcKN8newcGN7Ecxhpz2kUSzy.jpg","\/storage\/gallery\/3Znna9o8OT2JLFts5MnawOrARRO43ytvZHENjLcX.jpg","\/storage\/gallery\/B74f3h83JCN5f9SRQJCn7slVmm4PBJgDEpK4ldEQ.png"]', '2023-05-30 05:41:59', '2023-05-30 05:42:47', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (10, 5, 13, 'ЛОФТ-Офис в Товариществе Рябовской Мануфактуры', 'Аренда от собственника!

Помещение на 2-м этаже с арендатором в ЛОФТ-квартале Товарищество Рябовской Мануфактуры (100 м от метро).

Площадь 236,4 м2, двухуровневое (с антресолью), выполнена современная дизайнерская отделка, потолки под 5м, смешанная планировка, арочные окна.

+ 12% коридорный коэффициент.

Стильная, благоустроенная территория; свободный доступ 24/7 (без пропускной системы).

Товарищество Рябовской Мануфактуры — это лофт-квартал, где мы вместе создаем открытую среду для воплощения идей: больших и малых, отложенных в долгий ящик и требующих быстрой реализации, смелых и осторожных, быстрых и долгосрочных.

Наша концепция — это пространство для бизнеса, в котором можно не только комфортно работать, но и проводить время, заниматься спортом, посещать различные мероприятия для развития. В нашем объекте мы сохранили историю квартала, историю города и построили новое пространство для взаимодействий.

Метро Тульская — район с развитой инфраструктурой, в пешей доступности находятся ТЦ Ереван плаза, МФК Тульский, Даниловский рынок, ТЦ Тульский, Арбитражный суд, Данилов монастырь, бизнес-центры, театры и объекты культуры.', NULL, '[55.708394,37.625397]', 'г. Москва, ул. Холодильный переулок, д. 3', 'Корпус 1, строение 3', '["Столы","Стулья","Стеллажи","Офисная техника"]', '["Туалет","Мини-кухня"]', 700.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"08:00","time_end":"00:00"}', 'f', '["\/storage\/gallery\/Nxi9KuYGvEnddvpLM7jQuXAwvz68fzrjcPJnFkQI.webp","\/storage\/gallery\/8x0FZsPkMdv2zCAuvNTsk3LujG2IwiKAFa8y8U7E.webp","\/storage\/gallery\/dbDvi3aFAceN8OY7c4PuVYWbSxBfp1BtqXwQ02sK.webp","\/storage\/gallery\/8sl7tSywjaEdBGWkpLQPMj728jdIMGoGO8LmTWyo.webp","\/storage\/gallery\/ZbQPCpXoSB5lBCckdtn1nAxne2PPN8txZ3kl6dvg.webp","\/storage\/gallery\/3yaFm6bknbo63AW3f0S3MwhZPEBtysIehUxeLurO.webp","\/storage\/gallery\/gAhfklSZGuoaFitS4Y6Pq6GPhiN4ZXhHp9TYcDth.webp"]', '2023-05-30 05:54:04', '2023-05-30 05:58:13', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (7, 5, 12, 'Офис/Студия 10-2', 'Небольшое светлое помещение в историческом строении. Проходная пешая локация.

Помимо заполнения анкеты рекомендуем вам сразу позвонить для консультации в отдел аренды, чтобы уточнить все интересующие вас детали и развеять сомнения.', NULL, '[55.752247,37.671193]', 'г. Москва, ул. Нижняя Сыромятническая, д. 10', '10 строение, 2 этаж.', '["Розетки 220В"]', '["Кондиционер"]', 1000.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"08:00","time_end":"21:00"}', 'f', '["\/storage\/gallery\/pd9SWASh9H827UFtG8ilknmi251uZczZVfpImWAY.jpg","\/storage\/gallery\/brxDUyXsEwpOeR3pqBs1u8vQhgrneEc2yIyfyJ10.jpg","\/storage\/gallery\/CWhaIVupDmPlcXrrDhFRGSRmwb5ST4ophuzJF5Sz.jpg","\/storage\/gallery\/8qc7jfrSAPkOQ9f7k8BC3psaZsnutsq1H1Tb4tJ7.jpg","\/storage\/gallery\/AGQPW5nnCfQtIlg4s2vt1hGTV3Rx39xUkJvLlrYT.jpg","\/storage\/gallery\/DXdj35KRMb91Jeo1m3SWRc9ZFkhOE7oDi2bQZ1ES.jpg","\/storage\/gallery\/c3e4lD4191gGECHBUvt5viJd1ixgDIlkYIgN1o85.jpg","\/storage\/gallery\/EEaQ1BS1bIAP0RxWIUE9ppHYj5faa3SZtIGVNaFz.png"]', '2023-05-30 05:36:58', '2023-05-30 05:42:48', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (12, 1, 13, 'СТРИТ ЛОФТ в Товариществе Рябовской Мануфактуры', 'Прямая аренда от собственника!

Сдается помещение в современном лофт-квартале «Товарищество Рябовской Мануфактуры».

Площадь 730м2, первый этаж.

Высота потолков от 5м
Есть отдельный вход с улицы, а также дополнительные входы с улицы, со двора и из общих зон
Панорамные окна
Мокрые точки
Открытая планировка
Арендные каникулы
Под ремонт арендатором.
Возможно использование помещения: как торговое, под офис, представительство, шоу-рум, выставочный зал или любую другую смелую идею.

Свободный доступ в квартал 24/7, никаких турникетов, пропускных систем и т.п. Собственная парковка на 165 м/м.

Работаем с агентствами на стандартных рыночных условиях.', NULL, '[55.709414,37.624058]', 'г. Москва, ул. Холодильный переулок, д. 4', 'Корпус 1, строение 4', '[]', '[]', 1000.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"07:00","time_end":"23:00"}', 'f', '["\/storage\/gallery\/RD1YuHaOA81JHKlF6L26fHj65AYPKIUs7NyXmxb1.webp","\/storage\/gallery\/maFnVnoKbu0760oyPmOsz7OzqUAjOAGDGig3KT6L.webp","\/storage\/gallery\/K5cKlgq7mwZ1229beTikiowhZFPNGk2uoMWO5AZC.webp","\/storage\/gallery\/QGS92rdwGe1NX66nOfnHGvFUKwrbcaAmcsYgp8Yc.webp","\/storage\/gallery\/q2hsmn5gt5yBjTyrijU8KlJlaGNEDIEcZN11lj3I.webp"]', '2023-05-30 06:01:04', '2023-05-30 06:10:03', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (15, 15, 15, 'Мумий', 'Тестовая площадка', NULL, '[55.752141,37.59242]', 'г. Москва, ул. Новый Арбат, д. 15', 'Вход с арбата', '["Микрофон","Микрофон"]', '["Парковка"]', 3000.00, NULL, '{"date_start":"09.06.2023","date_end":"14.06.2023","time_start":"12:00","time_end":"15:00"}', 't', '["\/storage\/gallery\/kkQjfFSaZLdQwQrG8ztiYIwwyjQ6UqzU2fNgPSKe.jpg","\/storage\/gallery\/FQrysnKCta48rRBHWnrR2MREFJUAOh4LWh2LKq3W.png","\/storage\/gallery\/Di9ycG9Q33HwCZYSfkztsDmBsE0XG9bLuzKohN7L.png"]', '2023-05-30 06:16:39', '2023-06-11 06:21:33', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (13, 9, 14, 'Большой зал МДМ', 'Одна из немногих площадок в центре Москвы, которая рассчитана на 1800 посадочных мест. Для корпоративных и VIP клиентов в зале оборудована ложа повышенной комфортности, рассчитанная на 15 мест. Большой зал очень удобен для проведения:
Корпоративных мероприятий
Конференций
Концертов
Кино просмотров
Спектаклей', NULL, '[55.726882,37.579654]', 'г. Москва, ул. Комсомольский проспект, д. 28', 'метро Фрунзенская', '["Микрофон","Студийный свет","Прожектора"]', '["Туалет","Буфет "]', 2000.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"12:00","time_end":"00:00"}', 'f', '["\/storage\/gallery\/TsdTEdmPi6x5pD6HalfD8iEPlPe8n7WkctdhIQAp.jpg","\/storage\/gallery\/q1J1UrfsYQveCgBMmF8xoNO85tqiWYYo8lc51XtW.jpg","\/storage\/gallery\/oIEl7Hh5QS1Gd3ybSHzO3kqkepq379hKoO6CtGe9.jpg","\/storage\/gallery\/W7Z1LTIi6qaQb9G6FUcx9EIkq5ZR06zyG3dIqruQ.jpg"]', '2023-05-30 06:06:28', '2023-05-30 06:10:02', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (18, 16, 16, 'ЦЕХ ОТДЕЛКИ', 'Бывший «Цех Отделки» фабрики технических бумаг «Октябрь» стал одноименным местом для проведения массовых мероприятий — фестивалей, концертов, ярмарок и ночных вечеринок. Также это одно из постоянных мест размещения экспозиции в рамках программы Digital Air.

Площадь пространства — 300 квадратных метров.

Высота потолка — 4,4м.', NULL, '[55.779626,37.689716]', 'г. Москва, ул. Переведеновский переулок, д. 18', '', '[]', '[]', 1200.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"12:00","time_end":"20:00"}', 'f', '["\/storage\/gallery\/ZmM1m6AzZUDS64lxgUrvyVfF0nTYPYdNMrpDf41N.png","\/storage\/gallery\/CDZFSGXQLCknxnW4A7Clr4Orp67dzOxztixr8Bij.png","\/storage\/gallery\/xouhSWitYaNOV70YOFxmH8EqTckl4MiK1qHPXM1i.png","\/storage\/gallery\/MhztLgB0anDOYSbrIdgCLd3jmy2zpI278ZlPe6JA.png"]', '2023-05-30 06:24:05', '2023-05-30 06:24:17', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (19, 5, 17, 'Цех суперметалл', 'Цех — бывшее производственное здание по разработке специализированных сплавов. Это фундаментальное пространство с 10-ти метровой высотой остекления, где расположены миниофисы небольших компаний, лобби с зонами для встреч и переговорками, шоу-румы, кофейные зоны и ивент-площадка.', NULL, '[55.776613,37.677014]', 'г. Москва, ул. бауманская , д. 9', 'Корпус 23', '["Столы","Стулья","Офисная техника"]', '["Туалет","Парковка"]', 1500.00, NULL, '{"date_start":"11.05.2023","date_end":"20.06.2023","time_start":"00:00","time_end":"00:00"}', 'f', '["\/storage\/gallery\/17jpYxc2AVr6MFeWzYaN9U74zqbFtGJmoggApm2V.jpg","\/storage\/gallery\/Km4qphzwM9EEiYwBr4uVPbkraJXDWXD660ZEbuWN.jpg","\/storage\/gallery\/eYYEcrjo0c8mUXp4bF5eKcKR6SRj5kSG4iqcuGRo.jpg"]', '2023-05-30 06:32:41', '2023-05-30 06:33:15', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (8, 5, 12, 'Офис/Студия 9-3', 'Помещение для офиса/студии. Общая площадь: 87,94 кв.м
Помимо заполнения анкеты рекомендуем вам сразу позвонить для консультации в отдел аренды, чтобы уточнить все интересующие вас детали и развеять сомнения.', NULL, '[55.752247,37.671193]', 'г. Москва, ул. Нижняя сыромятническая , д. 10', 'Строение 9, этаж 3.', '["Столы","Стулья","Офисная техника"]', '["Мини-кухня","Зелёные растения"]', 2500.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"08:00","time_end":"20:00"}', 'f', '["\/storage\/gallery\/iiBb3ATXp8wU7KCNOhK7y9fBzFZQJh0hkmz6WWIk.jpg","\/storage\/gallery\/4TK0C8s7v91kZthDs24s3tN8dhXymd9Cc9TvSJ4b.jpg","\/storage\/gallery\/MEk5gIlVbD56XkmUJCBxy0iAXg71eGxCMp73VNW7.jpg","\/storage\/gallery\/VfsUseC5WSYi3HoqwIxIXUXfi6MHPKdls1cGR8eJ.jpg","\/storage\/gallery\/VJyvDQ3T93PR1qCjYyQNQohYelyZx1VJTQQesJMg.jpg","\/storage\/gallery\/y5dGkzhAAsK9rJp0c3DnZxRZvFQrMfXmZlc5fWMf.png","\/storage\/gallery\/WLJOhO1odOFG6JUTGhxVu90TKV4uS1wcyGKOokH2.jpg","\/storage\/gallery\/QAXwh99HLCf8mCoC9qDjaXzXH6PjGk10mbtqtXFd.jpg","\/storage\/gallery\/GMpAOdfNHnUHwjYCOqo21h5WkXuBM2IMwCvssm0v.jpg","\/storage\/gallery\/vObOM769JxpdJDbp9b746lSsYFcCzujQ4AXtGQVQ.jpg"]', '2023-05-30 05:39:36', '2023-05-30 05:42:46', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (33, 16, 10, 'ТЦ Победа', 'Площадка для создания рекламы', NULL, '[55.755819,37.617644]', 'г. Москва, ул. Победа, д. 1', 'Вход со двора', '["Микрофон 1","Микрофон 2"]', '["Парковка на 25 машин","Темлая парковка"]', 2000.00, NULL, '{"date_start":"02.06.2023","date_end":"20.06.2023","time_start":"12:00","time_end":"16:00"}', 'f', '["\/storage\/gallery\/rP5pgs081row50t5AWdX57vGbom8qlUCk0Wz3wBy.jpg"]', '2023-06-09 20:59:03', '2023-06-09 21:10:44', 't', '/storage/panorama/jnxhU9FU5XTovVdZMJlvgq5UY1HeM2D3UYkjFSEV.jpg');
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (35, 9, 10, 'Площадка для демонстрации тура', 'Демонстрация возможностей виртуального тура', NULL, '[55.757369,37.612991]', 'г. Москва, ул. Тверская, д. 1', 'null', '["Микрофон"]', '["Парковка"]', 5000.00, 4.00, '{"date_start":"01.06.2023","date_end":"13.06.2023","time_start":"12:00","time_end":"18:00"}', 't', '["\/storage\/gallery\/IgdLaXno6yPkc8uy2j36MlbDCVR1nhNMbF4QutrZ.jpg"]', '2023-06-10 04:02:20', '2023-06-10 04:08:14', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (11, 5, 13, 'ЛОФТ-Офис в Товариществе Рябовской Мануфактуры', 'Прямая аренда от собственника!

Сдается помещение 41,1 кв.м в современном лофт-квартале «Товарищество Рябовской Мануфактуры».

Возможно использование помещения под офис, представительство, шоу-рум или любую другую смелую идею. Свободный доступ в квартал 24/7, никаких турникетов, пропускных систем и т.п. Собственная парковка на 300 м/м. Работаем с агентствами на стандартных рыночных условиях.

Товарищество Рябовской Мануфактуры — это лофт-квартал, где мы вместе создаем открытую среду для воплощения идей: больших и малых, отложенных в долгий ящик и требующих быстрой реализации, смелых и осторожных, быстрых и долгосрочных.

Наша концепция — это пространство для бизнеса, в котором можно не только комфортно работать, но и проводить время, заниматься спортом, посещать различные мероприятия для развития. В нашем объекте мы сохранили историю квартала, историю города и построили новое пространство для взаимодействий.

Метро Тульская — район с развитой инфраструктурой, в пешей доступности находятся ТЦ Ереван плаза, МФК Тульский, Даниловский рынок, ТЦ Тульский, Арбитражный суд, Данилов монастырь, бизнес-центры, театры и объекты культуры', NULL, '[55.709414,37.624058]', 'г. Москва, ул. Холодильный переулок, д. 4', 'Корпус 1, строение 4', '["Столы","Стулья","Офисная техника","Стеллажи"]', '["Туалет","Мини-кухня"]', 400.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"08:00","time_end":"23:00"}', 'f', '["\/storage\/gallery\/2etcoxPEpqf7JXqD9G07HIyOpzTA2Ryq6cPTAmYq.webp","\/storage\/gallery\/PTnYINw8lm4YysQPIRTX0SngvNoaZDA8Qgd3oav8.webp","\/storage\/gallery\/7k5zSNkQ79CGvMf3vGoVqmcBSwtJl3FlxcVjVKRH.webp","\/storage\/gallery\/k40eT3JJLLBXoEWA9gjJaXJ0wdij9Y5kuHlnxtuY.webp","\/storage\/gallery\/9LO5R2QudcDb0AE6XyoKJTKJ3rQ2yfw62mKVsZDt.webp"]', '2023-05-30 05:57:59', '2023-05-30 05:58:14', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (6, 5, 12, 'Студия/Офис/Мастерская 12-1', 'Светлое живописное помещение с видом на внутренний дворик Artplay. Здание расположено в самом центре площадки. Индивидуальный вход с улицы.

Помимо заполнения анкеты рекомендуем вам сразу позвонить для консультации в отдел аренды, чтобы уточнить все интересующие вас детали и развеять сомнения.', NULL, '[55.752247,37.671193]', 'г. Москва, ул. Сыромятническая, д. 10', 'Строение 12, 1 этаж.', '["Столы","Стулья","ПК","Принтер","Стеллажи"]', '["Туалет","Кофемашина"]', 1000.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"08:00","time_end":"21:00"}', 'f', '["\/storage\/gallery\/EikCCBOUN8qtkwuql6YZsrqk1lXqULHy6ycgMIBM.jpg","\/storage\/gallery\/W9KnErhBK1yqSuWmW5DvUtgaZJofxictqSGarFk2.jpg","\/storage\/gallery\/6EhRP3lMWuoGcvtQuoUZ1oDEnuMhZcANNERl2TQP.jpg","\/storage\/gallery\/ZHUHXhPkQXEXxiNQW7vbZLOvA3szlPQWkGdFi1I3.jpg","\/storage\/gallery\/jEEb12rtQ7ZIo18Fvatxn6k5DkCzFmtlVfa8GlfN.jpg","\/storage\/gallery\/WIJ3paPUMpj8eelGPZyK2mPRiXGloZiVohHQv3O1.jpg","\/storage\/gallery\/LFPh54CnRiqEAgIA82spITKIeI3nUuA54UcwLGLy.jpg","\/storage\/gallery\/mnMmLsxNzMgstuz6TYy3gyZ9nk3Pw5iHucInUKO1.jpg","\/storage\/gallery\/DrkaWylB53WwtEvgHDkt4n521FVmIoIcPlowb2Di.jpg"]', '2023-05-30 05:34:45', '2023-05-30 05:42:45', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (17, 16, 16, 'ОЛИВЬЕ', 'Полная свобода художника при реализации идеи, широкий спектр высказываний, возможных в выставочном зале , безусловный примат содержания над формой, промышленно-рабочая стилистика в сочетании с равным подходом ко всем проектам – таковы принципы работы выставочного пространства «Оливье». Практическим воплощением этих принципов можно считать многообразие осуществленных выставочных проектов: зал является неизменной площадкой проектов Московской Биеннале Современного Искусства, Биеннале Молодого Искусства «Стой!Кто идет?», Фестиваля Частных Коллекций Современного Искусства.

За время, прошедшее с его открытия в 2006 году, здесь прошли выставки Валерия Кошлякова, ведущих представителей Московского концептуализма, мастер-классы и site-specific инсталляции Лизы Шмитц и студентов МАРХИ, выставки русских художников, живущих в Европе, состоялось большинство показов спектаклей-перформансов Liquid-театра, проведены международные конференции культурных центров, расположенных на промышленных площадках и многие другие проекты.

Площадь пространства — 512 квадратных метров.

Высота потолка — 6,6м (до потолка).', NULL, '[55.779626,37.689716]', 'г. Москва, ул. Переведеновский переулок, д. 18', '', '[]', '[]', 1000.00, NULL, '{"date_start":"01.06.2023","date_end":"20.06.2023","time_start":"12:00","time_end":"20:00"}', 'f', '["\/storage\/gallery\/WNHOETaYHoyAJp1ARFdGHRd3k4Hth9haiwMIvjIM.jpg","\/storage\/gallery\/wSmypS1gLrNyzme1q7I4w3fL5AU2CRfqGZeYj4nN.png","\/storage\/gallery\/h9T0eGHAHoTLVtYUY6TeJ8U0QLxS4NOIkMS7D1gc.png","\/storage\/gallery\/aNRGfaLjaLq1lZvwJBeb3kHteVYTxH7AKG2kSn8h.jpg"]', '2023-05-30 06:22:55', '2023-05-30 06:24:18', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (37, 4, 24, 'ВИАР', 'укпукпкпууеппуеп', NULL, '[55.749998,37.604951]', 'г. Москва, ул. Знаменка, д. 15', 'Со двора', '["Очки"]', '["Парковка"]', 100.00, NULL, '{"date_start":"11.06.2023","date_end":"25.06.2023","time_start":"12:00","time_end":"19:00"}', 'f', '["\/storage\/gallery\/y3Wqxp8kgcYg6FSENXY40Ad6vA98V9JUNnSqzDp3.jpg"]', '2023-06-10 15:43:11', '2023-06-10 15:45:24', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (36, 6, 11, 'CreativeHub', 'Тестовая площадка', NULL, '[55.752141,37.59242]', 'г. Москва, ул. Новый Арбат, д. 15', 'Вход с арбата', '["Микрофон"]', '["Парковка"]', 3000.00, NULL, '{"date_start":"09.06.2023","date_end":"14.06.2023","time_start":"12:00","time_end":"15:00"}', 't', '["\/storage\/gallery\/qIma4Praxy5HIIANm09OPjBFvlMHaOH3U0XILwsB.png"]', '2023-06-10 07:38:36', '2023-06-11 07:09:45', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (14, 14, 14, 'Мумий Троль 3', 'Тестовая площадка', NULL, '[55.752141,37.59242]', 'г. Москва, ул. Новый Арбат, д. 15', 'Вход с арбата', '["Микрофон"]', '[]', 2000.00, NULL, '{"date_start":"09.06.2023","date_end":"14.06.2023","time_start":"12:00","time_end":"15:00"}', 't', '["\/storage\/gallery\/kkQjfFSaZLdQwQrG8ztiYIwwyjQ6UqzU2fNgPSKe.jpg","\/storage\/gallery\/IkHu1rMcPl5CoNBpLny0RVw9j4EXk0cwV7mq3JPz.png"]', '2023-05-30 06:09:41', '2023-06-11 06:15:04', 't', NULL);
INSERT INTO "public"."objects" OVERRIDING SYSTEM VALUE VALUES (16, 16, 16, 'Мумий Троль 1', 'Тестовая площадка', NULL, '[55.752141,37.59242]', 'г. Москва, ул. Новый Арбат, д. 15', 'Вход с арбата', '["Микрофон"]', '[]', 2000.00, NULL, '{"date_start":"09.06.2023","date_end":"14.06.2023","time_start":"12:00","time_end":"15:00"}', 't', '["\/storage\/gallery\/4JTZTe7731iC75edUU0lceMXSMSWB8pxpRHK073W.png","\/storage\/gallery\/SmbxpVSpzuOv8Xp1K12sMcEIJa63LNFdJFff6Z1H.png","\/storage\/gallery\/zmesgmNOvLra0v2wmCWi6uQtkGhWukjQgzy7v7eX.png","\/storage\/gallery\/LlqgjJXcDGUCWjL2LhM7bUkgzOC8e9phth31hrTM.png"]', '2023-05-30 06:21:15', '2023-06-11 06:01:44', 't', NULL);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_reset_tokens";
CREATE TABLE "public"."password_reset_tokens" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."personal_access_tokens";
CREATE TABLE "public"."personal_access_tokens" (
  "id" int8 NOT NULL DEFAULT nextval('personal_access_tokens_id_seq'::regclass),
  "tokenable_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "tokenable_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "abilities" text COLLATE "pg_catalog"."default",
  "last_used_at" timestamp(0),
  "expires_at" timestamp(0),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS "public"."reports";
CREATE TABLE "public"."reports" (
  "id" int4 NOT NULL DEFAULT nextval('reports_id_seq'::regclass),
  "object_id" int4 NOT NULL,
  "reporter_id" int4 NOT NULL,
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of reports
-- ----------------------------

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS "public"."reviews";
CREATE TABLE "public"."reviews" (
  "id" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "object_id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "rating" numeric(3,2) NOT NULL,
  "text" text COLLATE "pg_catalog"."default",
  "moderated" bool,
  "updated_at" timestamp(6),
  "created_at" timestamp(6)
)
;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO "public"."reviews" OVERRIDING SYSTEM VALUE VALUES (3, 36, 10, 5.00, 'Шикарный жестокий сюжетный боевик с элементами стелс, хоррора и длинной одиночной компанией. Геймплей обалденный, графика красивейшая, отличное звуковое оформление. Хейтеры, большая часть которых не играла в данную игру или «играла» на YouTube, в отзывах пишут о плохом сюжете и прочую чепуху. Касаемо сюжета, студия Naughty Dog отошла от темы привязанности «родителя и ребенка» (Джоэл и Элли) и заложили в основу нелинейного повествования: ненависть и месть.', NULL, '2023-06-10 12:05:05', '2023-06-10 12:05:05');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(0),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "rating_as_owner" numeric(3,2),
  "passport" varchar(255) COLLATE "pg_catalog"."default",
  "surname" varchar(255) COLLATE "pg_catalog"."default",
  "patronymic" varchar(255) COLLATE "pg_catalog"."default",
  "phonenumber" varchar(255) COLLATE "pg_catalog"."default",
  "birthday" varchar(255) COLLATE "pg_catalog"."default",
  "is_entity" bool,
  "organization_name" varchar(255) COLLATE "pg_catalog"."default",
  "organization_inn" varchar(255) COLLATE "pg_catalog"."default",
  "employer_position" varchar(255) COLLATE "pg_catalog"."default",
  "is_admin" bool DEFAULT false,
  "avatar_url" varchar(255) COLLATE "pg_catalog"."default" DEFAULT '/storage/avatars/default.png'::character varying,
  "rating_as_taker" numeric(3,2),
  "access" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (22, 'Тест', 'test.test@test.test', NULL, '$2y$10$K2VopQZgrDR8ywGVfp5t2u9.GOFsN6eq7BbEMFV/0VK48NZEQ9CBi', NULL, '2023-06-04 01:14:47', '2023-06-10 02:48:24', NULL, NULL, 'Тестировщик', 'Тестович', '+7(231)354-31-23', '23132002', 'f', NULL, NULL, NULL, 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (17, 'Владимир', 'metal@gmail.com', NULL, '$2y$10$Njd/3Sm2zREASWL4NgGp6uD3Q7eRj38O68qJK.lXIfg0ixOcJHbR2', NULL, '2023-05-30 06:29:03', '2023-05-30 06:29:03', NULL, NULL, 'Синицин', 'Алексеевич', '+79294050173', '09.09.1999', 't', 'Суперметалл', '123456789', 'Директор', 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (19, 'Ма', 'wasparag@gmail.com', NULL, '$2y$10$IqbZCglmxBVnj8vOXvExWeYsHxWjXGD2RU9hQZKBi8ZBgQcfrPAKm', NULL, '2023-06-01 12:43:06', '2023-06-01 12:43:17', NULL, NULL, 'Ро', 'Шка', '+7(212)342-34-23', '02.06.1930', 'f', NULL, NULL, NULL, 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (11, 'Александр 2', 'misterobot404@gmail.com', NULL, '$2y$10$vGcjk88YNWaH7zfQoUmhqOW1TTHvOhL8GiLlsxUfSWx.dCOSLaQWa', NULL, '2023-05-30 02:37:55', '2023-06-01 07:00:19', NULL, NULL, 'Закусило', 'Михайлович', '+79294050173', '04.11.1998', 'f', NULL, NULL, NULL, 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (15, 'Сергей', 'flacon@gmail.com', NULL, '$2y$10$CdFrPNVdar9oPejeiAMK5eXaldHiG1x4OzJ.vBaFFED1.H4o10d7O', NULL, '2023-05-30 06:13:41', '2023-05-30 06:13:41', NULL, NULL, 'Межеев', 'Борисович', '+79294050173', '19.01.1988', 't', 'Флакон', '1234567890', 'Куратор', 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (12, 'Иван', 'artplay@gmail.com', NULL, '$2y$10$kCyQoRvyir44uwWkLrn6ueAY5UH1uBUYHDsD/YuXr0bOO79zIdwM6', NULL, '2023-05-30 04:48:08', '2023-06-01 06:49:11', NULL, NULL, 'Иванов', 'Иванович', '+79294050173', '19.01.2000', 't', 'ООО "УК "АРТПЛЭЙ', '12345', 'Командир Роты', 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (20, 'Ма', 'romashka@bk.ru', NULL, '$2y$10$lJ6cqFpmyjLDiehr3VtZ/ORryROUe7SSrcYZD8AJpY6g538iMFbUy', NULL, '2023-06-01 12:45:55', '2023-06-01 12:45:55', NULL, NULL, 'Ро', 'Шка', '+7(212)352-34-23', '04.06.1949', 't', 'ООО "Ромашка"', '123123123', 'Ромашка', 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (14, 'Александр', 'dk@gmail.com', NULL, '$2y$10$yM2Y4vWlnxWRT6z/2aQi/u3fJqb4ITaK2vnLV6CwCel1BrvoORxtS', NULL, '2023-05-30 06:03:18', '2023-05-30 06:03:18', NULL, NULL, 'Левченко', 'Михайлович', '+79294050173', '01.10.1988', 't', 'Московский дворец молодёжи', '1234567890', 'Директор', 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (21, 'opo', 'gena2346gen@gmail.com', NULL, '$2y$10$ijw7hV6c3FeF7iQa3hsntOXcOlnG1NVvCiwPH0F3zxa0gOZkpXva2', NULL, '2023-06-03 10:33:50', '2023-06-03 10:33:50', NULL, NULL, 'oioi', 'opok', NULL, '09/12', 'f', NULL, NULL, NULL, 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (24, 'Евгений', 'arenda1@gmail.com', NULL, '$2y$10$b0jt8mCdB6gRZCFLLFykE.m8EPZSHB/9Pr2.0dC1SlnCr6lID6TXS', NULL, '2023-06-09 19:31:53', '2023-06-10 03:08:15', NULL, NULL, 'Шаповалов', 'Эдуардович', '+7(999)089-35-52', '08/10/2000', 't', 'СДАЧА', '7727563778', 'Директор', 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (23, 'Можаровский', 'abc@gmail.com', NULL, '$2y$10$vfZGW0DzSrRV5WBSknY/IOAPEDl/yDHEY1do/psJyJBk8Zt5Ssgs6', NULL, '2023-06-08 08:42:12', '2023-06-10 03:08:14', NULL, NULL, 'Антон', 'Эдуардович', '+7(914)416-53-93', '05/05', 'f', NULL, NULL, NULL, 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (16, 'Арсений', 'fabrica@gmail.com', NULL, '$2y$10$P812UbFYHRpKJ7AiSFE8R.sQjgSkJQTrNoNDV4bSGqcxdAbo/ecaC', NULL, '2023-05-30 06:18:46', '2023-05-30 06:18:46', NULL, NULL, 'Попов', 'Антонович', '+79294050173', '07.10.1999', 't', 'Центра творческих индустрий «Фабрика»', '123456789', 'Директор', 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (13, 'Иван', 'ryabov@gmail.com', NULL, '$2y$10$3OEd5IAww3lrmUKjMmxTt.2kCi4BIOKIbeO/7zxluGCZQy9CB8UyC', NULL, '2023-05-30 05:48:34', '2023-05-30 05:48:34', NULL, NULL, 'Рябов', 'Петрович', '+79294050173', '10.01.1998', 't', 'Товарищество Рябовской Мануфактуры,', '123', 'Менеджер', 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (25, 'Можаровский', 'arenda2@gmail.com', NULL, '$2y$10$jo51.MB029/lNdj5LB9o8.rmphqfZiG7RG2k2Dtl6PBHU/ietrobW', NULL, '2023-06-09 19:37:52', '2023-06-10 03:08:16', NULL, NULL, 'Антон', 'Эдуардович', '+7(914)416-53-93', '02/03/2001', 'f', NULL, NULL, NULL, 'f', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (10, 'Александр', 'admin@gmail.com', NULL, '$2y$10$SEu3VHMwhUK5et7B0CO/SuJdokoDy0RznXQP985qiFbzcNYF5W/B6', NULL, '2023-05-30 01:59:11', '2023-06-01 06:53:07', NULL, NULL, 'Закусило', 'Михайлович', '+79294050173', '04.11.1998', 'f', NULL, NULL, NULL, 't', '/storage/avatars/default.png', NULL, 't');
INSERT INTO "public"."users" VALUES (27, 'qweqwe', 'misterobot4044@gmail.com', NULL, '$2y$10$fXbzEmrKP82BNYlMWtMCwOCHKR7gsRKFtZL9AHGc7hpYi44SDvSaC', NULL, '2023-06-10 03:17:26', '2023-06-10 03:17:26', NULL, NULL, 'wqeqweqwe', 'qweqwe', '+7(909)897-36-20', '07.06.2023', 'f', NULL, NULL, NULL, 'f', '/storage/avatars/default.png', NULL, 'f');
INSERT INTO "public"."users" VALUES (18, 'Семён', 'chmo@gmail.com', NULL, '$2y$10$8hVQa47YNAJmWJt.0BgKxuZ.GLOcAVeceddP62PS8sEA0Xe928aIC', NULL, '2023-06-01 01:37:15', '2023-06-01 01:37:15', NULL, NULL, 'Левченко', 'Александрович', '+79294050173', '01.06.2023', 'f', NULL, NULL, NULL, 'f', '/storage/avatars/default.png', NULL, 't');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."categories_id_seq"
OWNED BY "public"."categories"."id";
SELECT setval('"public"."categories_id_seq"', 16, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."deals_id_seq"
OWNED BY "public"."deals"."id";
SELECT setval('"public"."deals_id_seq"', 17, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."failed_jobs_id_seq"
OWNED BY "public"."failed_jobs"."id";
SELECT setval('"public"."failed_jobs_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."favorites_id_seq"
OWNED BY "public"."favorites"."id";
SELECT setval('"public"."favorites_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."messages_id_seq"
OWNED BY "public"."messages"."id";
SELECT setval('"public"."messages_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."oauth_clients_id_seq"
OWNED BY "public"."oauth_clients"."id";
SELECT setval('"public"."oauth_clients_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."oauth_personal_access_clients_id_seq"
OWNED BY "public"."oauth_personal_access_clients"."id";
SELECT setval('"public"."oauth_personal_access_clients_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."objects_id_seq"
OWNED BY "public"."objects"."id";
SELECT setval('"public"."objects_id_seq"', 37, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."personal_access_tokens_id_seq"
OWNED BY "public"."personal_access_tokens"."id";
SELECT setval('"public"."personal_access_tokens_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."reports_id_seq"
OWNED BY "public"."reports"."id";
SELECT setval('"public"."reports_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."reviews_id_seq"
OWNED BY "public"."reviews"."id";
SELECT setval('"public"."reviews_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 27, true);

-- ----------------------------
-- Auto increment value for categories
-- ----------------------------
SELECT setval('"public"."categories_id_seq"', 16, true);

-- ----------------------------
-- Primary Key structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for deals
-- ----------------------------
SELECT setval('"public"."deals_id_seq"', 17, true);

-- ----------------------------
-- Primary Key structure for table deals
-- ----------------------------
ALTER TABLE "public"."deals" ADD CONSTRAINT "deals_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_uuid_unique" UNIQUE ("uuid");

-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table favorites
-- ----------------------------
ALTER TABLE "public"."favorites" ADD CONSTRAINT "favorites_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for messages
-- ----------------------------
SELECT setval('"public"."messages_id_seq"', 1, false);

-- ----------------------------
-- Primary Key structure for table messages
-- ----------------------------
ALTER TABLE "public"."messages" ADD CONSTRAINT "messages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_access_tokens
-- ----------------------------
CREATE INDEX "oauth_access_tokens_user_id_index" ON "public"."oauth_access_tokens" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_access_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_access_tokens" ADD CONSTRAINT "oauth_access_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_auth_codes
-- ----------------------------
CREATE INDEX "oauth_auth_codes_user_id_index" ON "public"."oauth_auth_codes" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_auth_codes
-- ----------------------------
ALTER TABLE "public"."oauth_auth_codes" ADD CONSTRAINT "oauth_auth_codes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_clients
-- ----------------------------
CREATE INDEX "oauth_clients_user_id_index" ON "public"."oauth_clients" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_clients
-- ----------------------------
ALTER TABLE "public"."oauth_clients" ADD CONSTRAINT "oauth_clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table oauth_personal_access_clients
-- ----------------------------
ALTER TABLE "public"."oauth_personal_access_clients" ADD CONSTRAINT "oauth_personal_access_clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_refresh_tokens
-- ----------------------------
CREATE INDEX "oauth_refresh_tokens_access_token_id_index" ON "public"."oauth_refresh_tokens" USING btree (
  "access_token_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_refresh_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_refresh_tokens" ADD CONSTRAINT "oauth_refresh_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for objects
-- ----------------------------
SELECT setval('"public"."objects_id_seq"', 37, true);

-- ----------------------------
-- Primary Key structure for table objects
-- ----------------------------
ALTER TABLE "public"."objects" ADD CONSTRAINT "objects_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table password_reset_tokens
-- ----------------------------
ALTER TABLE "public"."password_reset_tokens" ADD CONSTRAINT "password_reset_tokens_pkey" PRIMARY KEY ("email");

-- ----------------------------
-- Indexes structure for table personal_access_tokens
-- ----------------------------
CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" ON "public"."personal_access_tokens" USING btree (
  "tokenable_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tokenable_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table personal_access_tokens
-- ----------------------------
ALTER TABLE "public"."personal_access_tokens" ADD CONSTRAINT "personal_access_tokens_token_unique" UNIQUE ("token");

-- ----------------------------
-- Primary Key structure for table personal_access_tokens
-- ----------------------------
ALTER TABLE "public"."personal_access_tokens" ADD CONSTRAINT "personal_access_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table reports
-- ----------------------------
ALTER TABLE "public"."reports" ADD CONSTRAINT "reports_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for reviews
-- ----------------------------
SELECT setval('"public"."reviews_id_seq"', 4, true);

-- ----------------------------
-- Primary Key structure for table reviews
-- ----------------------------
ALTER TABLE "public"."reviews" ADD CONSTRAINT "reviews_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
