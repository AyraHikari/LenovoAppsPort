.class public Lcom/zui/gallery/database/GalleryProvider2;
.super Lcom/zui/gallery/database/GallerySQLiteContentProvider;
.source "GalleryProvider2.java"


# static fields
.field private static final ALBUM_AUTO_SYNC_CHANGED:I = 0x16058

.field private static final CALCULATESIZE:I = 0x15f91

.field private static final CS_BEST_SELECT:I = 0xc350

.field private static final FACE_DETECT:I = 0x9c40

.field private static final GROUPMEMBERSHIPS:I = 0x4e20

.field private static final GROUPMEMBERSHIPS_PHOTOS:I = 0x4e22

.field private static final GROUPS:I = 0x2710

.field private static final GROUPS_ID:I = 0x2711

.field private static final GROUPS_PHOTO:I = 0x2716

.field private static final GROUPS_VISIBLE:I = 0x2712

.field private static final GROUPS_VISIBLE_ID:I = 0x2713

.field private static final GROUP_NAME_MEMBERS_FILTER:I = 0x2715

.field private static final LOCAL_ALBUM_AND_PATH:I = 0x15ff4

.field private static final PHOTO_GROUPMEMBERSHIPS:I = 0x4e21

.field private static final PRIVACY_FILES:I = 0x15f94

.field private static final PRIVACY_FILES_ID:I = 0x15f95

.field private static final SHADOWVIDEOSHIPS:I = 0x15f90

.field private static final TAG:Ljava/lang/String; = "GalleryProvider2"

.field private static final TRASH_FILES:I = 0x15f92

.field private static final TRASH_FILES_ID:I = 0x15f93

.field private static final VIDEO_BEST_SELECT:I = 0x11170

.field private static final VIDEO_EDIT:I = 0xea60

.field private static final WHITES:I = 0x7530

.field private static final WHITES_ID:I = 0x7531

.field private static final mCsBestSelectProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFaceDetectProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPrivacyFilesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mShadowVideoShipsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTrashFilesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideBestSelectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideoEditMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupMemberShipsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;

.field private static final sWhitesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.zui.gallery.provider"

    const-string v2, "groups"

    const/16 v3, 0x2710

    .line 116
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groups/#"

    const/16 v3, 0x2711

    .line 117
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groups/group_id/#/membersfilter/*"

    const/16 v3, 0x2715

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groups_visible"

    const/16 v3, 0x2712

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groups_visible/#"

    const/16 v3, 0x2713

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groups_photo/#"

    const/16 v3, 0x2716

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groupmemberships/"

    const/16 v3, 0x4e20

    .line 125
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groupmemberships/#/*"

    const/16 v3, 0x4e21

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groupmemberships/photos"

    const/16 v3, 0x4e22

    .line 127
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "whites"

    const/16 v3, 0x7530

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "whites/#"

    const/16 v3, 0x7531

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "facedetect"

    const v3, 0x9c40

    .line 133
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "csbestselect"

    const v3, 0xc350

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "video_edit"

    const v3, 0xea60

    .line 137
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "video_best_select"

    const v3, 0x11170

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v2, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->TABLE_NAME:Ljava/lang/String;

    const v3, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "calculate/#"

    const v3, 0x15f91

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "trash_files"

    const v3, 0x15f92

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "trash_files/#"

    const v3, 0x15f93

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "local_album_and_path"

    const v3, 0x15ff4

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "album_auto_sync_changed_uri"

    const v3, 0x16058

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "privacy_files"

    const v3, 0x15f94

    .line 153
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "privacy_files/#"

    const v3, 0x15f95

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_id"

    .line 162
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "title"

    .line 163
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "title_res"

    .line 164
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "notes"

    .line 165
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "system_id"

    .line 166
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "group_visible"

    .line 167
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "group_is_read_only"

    .line 168
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_white"

    .line 169
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "media_id"

    const-string v5, "media_id"

    .line 178
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "path"

    .line 179
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "group_id"

    const-string v6, "group_id"

    .line 180
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "type"

    .line 181
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sGroupMemberShipsProjectionMap:Ljava/util/HashMap;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "bucket_id"

    const-string v6, "bucket_id"

    .line 186
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "bucket_name"

    const-string v6, "bucket_name"

    .line 187
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "display_name"

    const-string v6, "display_name"

    .line 188
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "read_only"

    const-string v5, "read_only"

    .line 190
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "is_exist"

    const-string v5, "is_exist"

    .line 191
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "from_lesafe"

    const-string v4, "from_lesafe"

    .line 193
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sWhitesProjectionMap:Ljava/util/HashMap;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "image_item_key"

    const-string v4, "image_item_key"

    .line 198
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mFaceDetectProjectionMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "items_path"

    const-string v4, "items_path"

    .line 203
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "best_choice"

    const-string v4, "best_choice"

    .line 204
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mCsBestSelectProjectionMap:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_data"

    .line 209
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "media_type"

    .line 210
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "key"

    .line 211
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mult"

    const-string v7, "mult"

    .line 212
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "startUs"

    const-string/jumbo v7, "startUs"

    .line 213
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "endUs"

    const-string v7, "endUs"

    .line 214
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "param1"

    .line 215
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "param2"

    .line 216
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "param3"

    .line 217
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mVideoEditMap:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "frame_info"

    const-string v9, "frame_info"

    .line 225
    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mVideBestSelectMap:Ljava/util/HashMap;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "size"

    const-string/jumbo v5, "size"

    .line 235
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "modify_data"

    const-string v5, "modify_data"

    .line 236
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mShadowVideoShipsMap:Ljava/util/HashMap;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "old_full_path"

    const-string v5, "old_full_path"

    .line 242
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "old_relative_path"

    const-string v5, "old_relative_path"

    .line 243
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_cloud_file"

    const-string v5, "is_cloud_file"

    .line 244
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "downloaded_cloud_origin_file"

    const-string v5, "downloaded_cloud_origin_file"

    .line 245
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cloud_file_unique_id"

    const-string v5, "cloud_file_unique_id"

    .line 246
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "delete_time_stamp"

    .line 247
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "is_continuous_image"

    .line 248
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "continuous_image_folder_name"

    .line 249
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "media_file_width"

    .line 250
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "media_file_height"

    .line 251
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "media_file_rotation"

    .line 252
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mTrashFilesMap:Ljava/util/HashMap;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_duration"

    const-string v2, "file_duration"

    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_size"

    const-string v2, "file_size"

    .line 262
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_path"

    const-string v2, "file_path"

    .line 263
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_make"

    const-string v2, "file_make"

    .line 264
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_model"

    const-string v2, "file_model"

    .line 265
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_flash"

    const-string v2, "file_flash"

    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_aperture"

    const-string v2, "file_aperture"

    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_focal_length"

    const-string v2, "file_focal_length"

    .line 268
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_white_balance"

    const-string v2, "file_white_balance"

    .line 269
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_exposure_time"

    const-string v2, "file_exposure_time"

    .line 271
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_iso"

    const-string v2, "file_iso"

    .line 272
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image_orientation"

    const-string v2, "image_orientation"

    .line 278
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sput-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mPrivacyFilesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;-><init>()V

    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    return-void
.end method

.method private deleteGroup(JLjava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_0

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 794
    iget-object p1, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "groupmemberships"

    invoke-virtual {p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return p3
.end method

.method private deleteGroupMemberShip(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groupmemberships"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private deleteShadowVideoShip(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/zui/gallery/database/GalleryDatabaseHelper$Tables;->SHADOW_VIDOESHIPS:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private deleteTrashFile(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "trash_files"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private deleteVideoBestSelect(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "video_best_select"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private deleteVideoEdit(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "video_edit"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private deleteWhite(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "whites"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getLimit(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, "Invalid limit parameter: "

    const-string v1, "GalleryProvider2"

    const-string v2, "limit"

    .line 1054
    invoke-static {p1, v2}, Lcom/zui/gallery/database/GalleryProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v3, ","

    .line 1061
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1062
    array-length v4, v3

    if-lez v4, :cond_2

    .line 1064
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1066
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :catch_0
    if-eqz v5, :cond_2

    return-object p1

    .line 1078
    :cond_2
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1083
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 1085
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1094
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1099
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 1105
    :cond_1
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return-object v0

    :cond_2
    add-int/2addr v3, v2

    if-ne v1, v3, :cond_3

    return-object v0

    .line 1116
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/16 p1, 0x26

    .line 1122
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 1124
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1126
    :cond_4
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1129
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSystemGroupName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "Pano"

    goto :goto_0

    :cond_1
    const-string p1, "Self"

    goto :goto_0

    :cond_2
    const-string p1, "Video"

    goto :goto_0

    :cond_3
    const-string p1, "Favorite"

    :goto_0
    return-object p1
.end method

.method private initialize()Z
    .locals 2

    const-string v0, "GalleryProvider2"

    const-string v1, "initialize"

    .line 295
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/zui/gallery/database/GalleryProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/database/GalleryDatabaseHelper;

    iput-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    .line 298
    invoke-virtual {v0}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    return v0
.end method

.method private insertCsBestSelect(Landroid/content/ContentValues;)J
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "csbestselect"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertCsBestSelect,id = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalleryProvider2"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private insertFaceDetect(Landroid/content/ContentValues;)V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "facedetect"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertFaceDetect,id = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalleryProvider2"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private insertGroup(Landroid/content/ContentValues;)J
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 477
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 479
    iget-object p1, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "groups"

    const-string v2, "_id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertGroup, groupId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalleryProvider2"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private insertGroupMemberShip(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 11

    const-string v0, "path"

    .line 560
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    const-string v8, "GalleryProvider2"

    if-eqz v1, :cond_4

    .line 562
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "group_id"

    .line 567
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "insertGroupMemberShip, group_id = null!!"

    .line 570
    invoke-static {v8, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6

    .line 574
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    .line 576
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    .line 578
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_id"

    .line 583
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v5, v0

    const/4 v0, 0x1

    .line 586
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v10

    .line 583
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/database/GalleryProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 590
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v6

    .line 593
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 597
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 599
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "groupmemberships"

    invoke-virtual {v0, v2, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertGroupMemberShip, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 563
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertGroupMemberShip, path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6
.end method

.method private insertGroupMemberShip(Landroid/net/Uri;Ljava/lang/String;JII)J
    .locals 7

    .line 517
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "path"

    .line 518
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "group_id"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "type"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p3, 0x13

    const/16 p4, 0x12

    if-eq p5, p4, :cond_0

    if-ne p5, p3, :cond_2

    :cond_0
    if-eq p5, p4, :cond_1

    if-ne p5, p3, :cond_3

    :cond_1
    const/4 p3, 0x2

    if-eq p6, p3, :cond_3

    .line 524
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/database/GalleryProvider2;->insertGroupMemberShip(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide p3

    goto :goto_0

    :cond_3
    const-wide/16 p3, 0x0

    .line 527
    :goto_0
    invoke-static {p5}, Lcom/zui/gallery/data/MediaObject;->isVideoType(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    const/4 p6, 0x0

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/database/GalleryProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v4, "_data=? "

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    aput-object p2, v5, p6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 538
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 539
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    .line 545
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "GalleryProvider2"

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertGroupMemberShip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    if-lez p6, :cond_6

    goto :goto_4

    .line 551
    :cond_6
    invoke-direct {p0, p2, p5}, Lcom/zui/gallery/database/GalleryProvider2;->insertShadowVideoShips(Ljava/lang/String;I)J

    move-result-wide p3

    goto :goto_4

    :goto_3
    if-eqz p1, :cond_7

    .line 545
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_7
    throw p2

    :cond_8
    :goto_4
    return-wide p3
.end method

.method private insertPrivacyFiles(Landroid/content/ContentValues;)J
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 497
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 499
    iget-object p1, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "privacy_files"

    const-string v2, "_id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertTrash, Id = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalleryProvider2"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    aput-object p2, p1, v0

    return-object p1

    .line 1016
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    .line 1017
    new-array v2, v2, [Ljava/lang/String;

    .line 1018
    aput-object p2, v2, v0

    .line 1019
    array-length p2, p1

    invoke-static {p1, v0, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private insertShadowVideoShips(Ljava/lang/String;I)J
    .locals 6

    .line 630
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 634
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 635
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_data"

    .line 636
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "media_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "size"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 639
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "modify_data"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 640
    iget-object p1, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object p2, Lcom/zui/gallery/database/GalleryDatabaseHelper$Tables;->SHADOW_VIDOESHIPS:Ljava/lang/String;

    const-string v1, "_id"

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1
.end method

.method private insertSystemGroup(Ljava/lang/String;I)J
    .locals 2

    .line 467
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "title"

    .line 468
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "system_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "group_is_read_only"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    invoke-direct {p0, v0}, Lcom/zui/gallery/database/GalleryProvider2;->insertGroup(Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method private insertTrashFiles(Landroid/content/ContentValues;)J
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 486
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 488
    iget-object p1, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "trash_files"

    const-string v2, "_id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertTrash, Id = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalleryProvider2"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private insertVideoBestSelect(Landroid/content/ContentValues;)J
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "video_best_select"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoBestSelect id = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalleryProvider2"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private insertVideoEdit(Landroid/content/ContentValues;)J
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "video_edit"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 619
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoEdit id = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalleryProvider2"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private insertWhite(Landroid/content/ContentValues;)J
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 508
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 510
    iget-object p1, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "whites"

    const-string v2, "_id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertWhite, whiteId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalleryProvider2"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private isReadOnlyGroup(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    .line 1034
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query, selection = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cursor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GalleryProvider2"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query, e = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v10, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/zui/gallery/database/GalleryProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/database/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object v10
.end method

.method private systemGroupTrigger(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 15

    move-object v7, p0

    move-object/from16 v6, p2

    const-string/jumbo v0, "system_id"

    .line 394
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-wide/16 v9, -0x1

    if-nez v8, :cond_0

    return-wide v9

    .line 401
    :cond_0
    sget-object v1, Lcom/zui/gallery/database/GalleryContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/String;

    .line 405
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v4, v12

    const/4 v5, 0x0

    const-string/jumbo v3, "system_id=?"

    move-object v0, p0

    .line 401
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/database/GalleryProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 408
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 411
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 416
    invoke-direct {p0, v8}, Lcom/zui/gallery/database/GalleryProvider2;->getSystemGroupName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 417
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "type"

    .line 418
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v1, 0x13

    const-string v3, "GalleryProvider2"

    if-ne v5, v1, :cond_3

    const-string v1, "insert screenRecord video "

    .line 420
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "media_id"

    .line 421
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 422
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 423
    sget-object v4, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "video obj exist"

    .line 426
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "mult"

    .line 432
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 433
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    goto :goto_0

    .line 437
    :cond_4
    div-int/lit8 v11, v4, 0x2

    goto :goto_0

    :cond_5
    move v11, v12

    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v4, v9, v12

    const-string v6, " media_type = "

    const-string v12, ", title = "

    const-string v13, ", systemId = "

    if-lez v4, :cond_6

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "group exist groupId = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", not need insert system group."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 447
    :cond_6
    invoke-direct {p0, v0, v8}, Lcom/zui/gallery/database/GalleryProvider2;->insertSystemGroup(Ljava/lang/String;I)J

    move-result-wide v9

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "group not exist create new groupId = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", need insert system group."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-wide v3, v9

    const/16 v0, 0xa

    if-ne v5, v0, :cond_7

    .line 453
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "_data"

    .line 454
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    .line 455
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "startUs"

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "endUs"

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "media_type"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    invoke-direct {p0, v0}, Lcom/zui/gallery/database/GalleryProvider2;->insertVideoEdit(Landroid/content/ContentValues;)J

    :cond_7
    move-object v0, p0

    move-object/from16 v1, p1

    move v6, v8

    .line 461
    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/database/GalleryProvider2;->insertGroupMemberShip(Landroid/net/Uri;Ljava/lang/String;JII)J

    move-result-wide v0

    return-wide v0
.end method

.method private updateGroup(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private updateGroupmemberships(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groupmemberships"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private updateTrashFiles(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "trash_files"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private updateVideBestSelect(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "video_best_select"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private updateVideEdit(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "video_edit"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private updateWhite(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "whites"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteInTransaction, uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryProvider2"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    return v1

    .line 779
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/database/GalleryProvider2;->deleteTrashFile(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 776
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/database/GalleryProvider2;->deleteShadowVideoShip(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 772
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/database/GalleryProvider2;->deleteVideoBestSelect(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 768
    :sswitch_3
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/database/GalleryProvider2;->deleteVideoEdit(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 764
    :sswitch_4
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/database/GalleryProvider2;->deleteWhite(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 758
    :sswitch_5
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/database/GalleryProvider2;->deleteGroupMemberShip(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 727
    :sswitch_6
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    const/4 v0, 0x0

    const-string/jumbo v4, "system_id"

    .line 729
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/zui/gallery/database/GalleryProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 733
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    .line 738
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/database/GalleryProvider2;->isReadOnlyGroup(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 741
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "_id = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 743
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " AND "

    .line 744
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, p1, p3}, Lcom/zui/gallery/database/GalleryProvider2;->deleteGroup(JLjava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_6
        0x4e20 -> :sswitch_5
        0x7530 -> :sswitch_4
        0xea60 -> :sswitch_3
        0x11170 -> :sswitch_2
        0x15f90 -> :sswitch_1
        0x15f92 -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/zui/gallery/database/GalleryProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/zui/gallery/database/GalleryDatabaseHelper;

    move-result-object p1

    return-object p1
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/zui/gallery/database/GalleryDatabaseHelper;
    .locals 1

    .line 305
    new-instance v0, Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/zui/gallery/database/GalleryDatabaseHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1134
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4e20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7530

    if-eq p1, v0, :cond_1

    const v0, 0x9c40

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string/jumbo p1, "vnd.android.cursor.dir/facedetect"

    return-object p1

    :cond_1
    const-string/jumbo p1, "vnd.android.cursor.dir/whites"

    return-object p1

    :cond_2
    const-string/jumbo p1, "vnd.android.cursor.dir/groupmemberships"

    return-object p1

    :cond_3
    const-string/jumbo p1, "vnd.android.cursor.dir/group"

    return-object p1
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertInTransaction, uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryProvider2"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 380
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertPrivacyFiles(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_1

    .line 376
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertTrashFiles(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_1

    .line 372
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertVideoBestSelect(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    .line 367
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertVideoEdit(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    .line 362
    :sswitch_4
    invoke-direct {p0, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertCsBestSelect(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    .line 357
    :sswitch_5
    invoke-direct {p0, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertFaceDetect(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 352
    :sswitch_6
    invoke-direct {p0, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertWhite(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "system_id"

    .line 324
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    return-object v2

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 333
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const-string p1, "invalid systemId"

    .line 334
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 340
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "values "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/database/GalleryProvider2;->systemGroupTrigger(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertGroupMemberShip(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    .line 318
    :sswitch_8
    invoke-direct {p0, p2}, Lcom/zui/gallery/database/GalleryProvider2;->insertGroup(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    :goto_0
    move-wide v0, v3

    :cond_2
    :goto_1
    cmp-long p2, v0, v3

    if-gtz p2, :cond_3

    return-object v2

    .line 389
    :cond_3
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_8
        0x4e20 -> :sswitch_7
        0x7530 -> :sswitch_6
        0x9c40 -> :sswitch_5
        0xc350 -> :sswitch_4
        0xea60 -> :sswitch_3
        0x11170 -> :sswitch_2
        0x15f92 -> :sswitch_1
        0x15f94 -> :sswitch_0
    .end sparse-switch
.end method

.method protected notifyChange()V
    .locals 1

    const/4 v0, 0x0

    .line 1155
    invoke-virtual {p0, v0}, Lcom/zui/gallery/database/GalleryProvider2;->notifyChange(Z)V

    return-void
.end method

.method protected notifyChange(Z)V
    .locals 3

    .line 1159
    invoke-virtual {p0}, Lcom/zui/gallery/database/GalleryProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/database/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method public onCreate()Z
    .locals 3

    .line 284
    invoke-super {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->onCreate()Z

    const-string v0, "GalleryProvider2"

    const-string v1, "onCreate!!"

    .line 285
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/zui/gallery/database/GalleryProvider2;->initialize()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot start provider"

    .line 289
    invoke-static {v0, v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query, uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GalleryProvider2"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v2, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v2}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 856
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 859
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/database/GalleryProvider2;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 861
    sget-object v4, Lcom/zui/gallery/database/GalleryProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const-string v5, "_id=?"

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    const-string/jumbo v10, "trash_files"

    packed-switch v4, :pswitch_data_1

    .line 998
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 991
    :pswitch_0
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    const-string v0, "privacy_files"

    .line 992
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 993
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mPrivacyFilesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 965
    :pswitch_1
    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 966
    invoke-virtual {v3, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 967
    sget-object v4, Lcom/zui/gallery/database/GalleryProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 968
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v1, v0}, Lcom/zui/gallery/database/GalleryProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 959
    :pswitch_2
    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 960
    invoke-virtual {v3, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 961
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mTrashFilesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 974
    :pswitch_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 975
    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_size"

    .line 976
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v12

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/database/GalleryProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-array v14, v7, [Ljava/lang/String;

    .line 980
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v6

    const/4 v15, 0x0

    const-string v13, "bucket_id = ? and _size >0 "

    .line 978
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 953
    :pswitch_4
    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 954
    sget-object v0, Lcom/zui/gallery/database/GalleryDatabaseHelper$Tables;->SHADOW_VIDOESHIPS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 955
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mShadowVideoShipsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 987
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/database/GalleryProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->getAlbumAndPathForSetting(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 946
    :sswitch_1
    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    const-string/jumbo v0, "video_best_select"

    .line 947
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 948
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mVideBestSelectMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 939
    :sswitch_2
    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    const-string/jumbo v0, "video_edit"

    .line 940
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 941
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mVideoEditMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 932
    :sswitch_3
    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    const-string v0, "csbestselect"

    .line 933
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 934
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mCsBestSelectProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "facedetect"

    .line 926
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 927
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->mFaceDetectProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 919
    :sswitch_5
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 920
    iget-object v0, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getWhitesView()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 921
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sWhitesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 912
    :sswitch_6
    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 913
    iget-object v0, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getGroupMemberShipsView()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 914
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sGroupMemberShipsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_1

    .line 904
    :sswitch_7
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 905
    iget-object v0, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getGroupMemberShipsView()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 906
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sGroupMemberShipsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_1

    .line 879
    :pswitch_5
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 880
    iget-object v4, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 881
    sget-object v4, Lcom/zui/gallery/database/GalleryProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 882
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v1, v0}, Lcom/zui/gallery/database/GalleryProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 871
    :pswitch_6
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 872
    iget-object v0, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 873
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_1

    .line 887
    :pswitch_7
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 888
    iget-object v4, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v4}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 889
    sget-object v4, Lcom/zui/gallery/database/GalleryProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 890
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v1, v0}, Lcom/zui/gallery/database/GalleryProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v5, v0

    goto :goto_2

    .line 864
    :pswitch_8
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 865
    iget-object v0, v9, Lcom/zui/gallery/database/GalleryProvider2;->mDbHelper:Lcom/zui/gallery/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/database/GalleryDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 866
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :goto_1
    move-object v5, v1

    :goto_2
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    .line 1001
    invoke-direct/range {v0 .. v8}, Lcom/zui/gallery/database/GalleryProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4e20 -> :sswitch_7
        0x4e22 -> :sswitch_6
        0x7530 -> :sswitch_5
        0x9c40 -> :sswitch_4
        0xc350 -> :sswitch_3
        0xea60 -> :sswitch_2
        0x11170 -> :sswitch_1
        0x15ff4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x15f90
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInTransaction, uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryProvider2"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v0, Lcom/zui/gallery/database/GalleryProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    return v1

    .line 687
    :sswitch_0
    invoke-virtual {p0}, Lcom/zui/gallery/database/GalleryProvider2;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v1

    .line 684
    :sswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/zui/gallery/database/GalleryProvider2;->updateTrashFiles(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 681
    :sswitch_2
    invoke-direct {p0, p2, p3, p4}, Lcom/zui/gallery/database/GalleryProvider2;->updateVideBestSelect(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 677
    :sswitch_3
    invoke-direct {p0, p2, p3, p4}, Lcom/zui/gallery/database/GalleryProvider2;->updateVideEdit(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 661
    :sswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 663
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 665
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " AND "

    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, p4}, Lcom/zui/gallery/database/GalleryProvider2;->updateWhite(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 657
    :sswitch_5
    invoke-direct {p0, p2, p3, p4}, Lcom/zui/gallery/database/GalleryProvider2;->updateWhite(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 673
    :sswitch_6
    invoke-direct {p0, p2, p3, p4}, Lcom/zui/gallery/database/GalleryProvider2;->updateGroupmemberships(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 653
    :sswitch_7
    invoke-direct {p0, p2, p3, p4}, Lcom/zui/gallery/database/GalleryProvider2;->updateGroup(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_7
        0x4e20 -> :sswitch_6
        0x7530 -> :sswitch_5
        0x7531 -> :sswitch_4
        0xea60 -> :sswitch_3
        0x11170 -> :sswitch_2
        0x15f92 -> :sswitch_1
        0x16058 -> :sswitch_0
    .end sparse-switch
.end method
