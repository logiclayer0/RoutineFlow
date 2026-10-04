BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "routine" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "isActive" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "routine_log" (
    "id" bigserial PRIMARY KEY,
    "routineId" bigint NOT NULL,
    "date" timestamp without time zone NOT NULL,
    "completed" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_stats" (
    "id" bigserial PRIMARY KEY,
    "userId" text NOT NULL,
    "xp" bigint NOT NULL,
    "level" bigint NOT NULL,
    "currentStreak" bigint NOT NULL,
    "longestStreak" bigint NOT NULL,
    "lastActive" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR routineflow
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('routineflow', '20261003134642148', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261003134642148', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20260924105404509', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260924105404509', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20260924105232991', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260924105232991', "timestamp" = now();


COMMIT;
