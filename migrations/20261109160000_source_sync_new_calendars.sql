-- Follow-up to #324: what a source does with a calendar it lists for the
-- first time once its owner has set it up. 0 (the default): listed, but not
-- synced until the owner turns it on. 1: synced at once. Only the owner
-- turns it on, on the calendar picker or with `calrs source calendars
-- --sync-new true`, so no calendar of a source is synced before its owner
-- has chosen. Managed Exchange sources sync new calendars whatever it says.
ALTER TABLE caldav_sources ADD COLUMN sync_new_calendars INTEGER NOT NULL DEFAULT 0;
