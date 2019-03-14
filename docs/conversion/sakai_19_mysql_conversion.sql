-- SAK-38427

ALTER TABLE MFR_TOPIC_T ADD COLUMN ALLOW_EMAIL_NOTIFICATIONS BIT(1) NOT NULL DEFAULT 1;
ALTER TABLE MFR_TOPIC_T ADD COLUMN INCLUDE_CONTENTS_IN_EMAILS BIT(1) NOT NULL DEFAULT 1;

-- END SAK-38427

-- SAK-33969
ALTER TABLE MFR_OPEN_FORUM_T ADD RESTRICT_PERMS_FOR_GROUPS BIT(1) DEFAULT FALSE;
ALTER TABLE MFR_TOPIC_T ADD RESTRICT_PERMS_FOR_GROUPS BIT(1) DEFAULT FALSE;
-- SAK-33969

-- SAK-39967

CREATE INDEX contentreview_provider_id_idx on CONTENTREVIEW_ITEM (providerId, externalId);

-- End SAK-39967

-- SAK-40721
ALTER TABLE BULLHORN_ALERTS ADD COLUMN DEFERRED BIT(1) NOT NULL DEFAULT b'0';
-- END SAK-40721

-- SAK-41017

UPDATE SAKAI_SITE_PAGE SET layout = '0' WHERE page_id = '!error-100';
UPDATE SAKAI_SITE_PAGE SET layout = '0' WHERE page_id = '!urlError-100';

-- End of SAK-41017

-- SAK-33855 add settings for display of stats
ALTER TABLE GB_GRADEBOOK_T ADD COLUMN ASSIGNMENT_STATS_DISPLAYED bit(1) NOT NULL DEFAULT b'1';
ALTER TABLE GB_GRADEBOOK_T ADD COLUMN COURSE_GRADE_STATS_DISPLAYED bit(1) NOT NULL DEFAULT b'1';
-- end SAK-33855

-- SAK-41225

DELETE FROM EMAIL_TEMPLATE_ITEM WHERE template_key = 'polls.notifyDeletedOption' AND template_locale='default'

-- End of SAK-41225
