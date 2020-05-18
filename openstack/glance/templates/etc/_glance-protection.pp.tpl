[^get_.*]
create = pp:image_viewer_only
read = @
update = pp:image_viewer_only
delete = pp:image_viewer_only

[^add_.*]
create = pp:image_admin_only
read = pp:image_admin_only
update = pp:image_admin_only
delete = pp:image_admin_only

[^delete_.*]
create = pp:image_admin_only
read = pp:image_admin_only
update = pp:image_admin_only
delete = pp:image_admin_only

[^m_.*]
create = pp:image_admin_only
read = pp:image_admin_only
update = pp:image_admin_only
delete = pp:image_admin_only