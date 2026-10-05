BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "channel" (
    "id" bigserial PRIMARY KEY,
    "youtubeChannelId" text NOT NULL,
    "handle" text,
    "name" text NOT NULL,
    "topics" json NOT NULL,
    "language" text,
    "addedBy" text,
    "uploadsPlaylistId" text,
    "isActive" boolean NOT NULL,
    "lastFetchedAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "channel_youtube_id_idx" ON "channel" USING btree ("youtubeChannelId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "video" (
    "id" bigserial PRIMARY KEY,
    "youtubeVideoId" text NOT NULL,
    "channelId" bigint NOT NULL,
    "title" text NOT NULL,
    "thumbnailUrl" text,
    "durationSeconds" bigint NOT NULL,
    "publishedAt" timestamp without time zone NOT NULL,
    "topics" json NOT NULL,
    "isShort" boolean NOT NULL,
    "isEmbeddable" boolean NOT NULL,
    "fetchedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "video_youtube_id_idx" ON "video" USING btree ("youtubeVideoId");
CREATE INDEX "video_channel_idx" ON "video" USING btree ("channelId");


--
-- MIGRATION VERSION FOR bloom
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bloom', '20261003155813300', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261003155813300', "timestamp" = now();

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
