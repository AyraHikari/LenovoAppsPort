.class public Lcom/zui/gallery/database/GalleryContract;
.super Ljava/lang/Object;
.source "GalleryContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/database/GalleryContract$PrivacyFiles;,
        Lcom/zui/gallery/database/GalleryContract$TrashFiles;,
        Lcom/zui/gallery/database/GalleryContract$PrivacyFilesColumns;,
        Lcom/zui/gallery/database/GalleryContract$TrashFilesColumns;,
        Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;,
        Lcom/zui/gallery/database/GalleryContract$ShadowVideoShipsColumns;,
        Lcom/zui/gallery/database/GalleryContract$VideoBestSelect;,
        Lcom/zui/gallery/database/GalleryContract$videoBestSelectColumns;,
        Lcom/zui/gallery/database/GalleryContract$VideoEdit;,
        Lcom/zui/gallery/database/GalleryContract$VideoEditColumns;,
        Lcom/zui/gallery/database/GalleryContract$CsBestSelect;,
        Lcom/zui/gallery/database/GalleryContract$CsBestSelectColumns;,
        Lcom/zui/gallery/database/GalleryContract$FaceDetect;,
        Lcom/zui/gallery/database/GalleryContract$FaceDetectColumns;,
        Lcom/zui/gallery/database/GalleryContract$Whites;,
        Lcom/zui/gallery/database/GalleryContract$WhitesColumns;,
        Lcom/zui/gallery/database/GalleryContract$GroupMemberShips;,
        Lcom/zui/gallery/database/GalleryContract$GroupMemberShipsColumns;,
        Lcom/zui/gallery/database/GalleryContract$Groups;,
        Lcom/zui/gallery/database/GalleryContract$GroupsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.zui.gallery.provider"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CLOUDSYNC_BUCKET_STR:Ljava/lang/String; = "CloudSync"

.field public static final CLOUDSYNC_BUCKET_SYSTEM_ID:I = 0x5

.field public static final FAKE_CAMERA_BUCKET_SYSTEM_ID:I = 0x7

.field public static final FAKE_CAMERA_SET_BUCKET_STR:Ljava/lang/String; = "FakeCameraSet"

.field public static final FAKE_PRIVACY_BUCKET_SYSTEM_ID:I = 0xa

.field public static final FAKE_PRIVACY_SET_BUCKET_STR:Ljava/lang/String; = "FakePrivacyCanSet"

.field public static final FAKE_TRASHCAN_BUCKET_SYSTEM_ID:I = 0x9

.field public static final FAKE_TRASHCAN_SET_BUCKET_STR:Ljava/lang/String; = "FakeTrashCanSet"

.field public static final FAKE_VIDEO_BUCKET_SYSTEM_ID:I = 0x8

.field public static final FAKE_VIDEO_SET_BUCKET_STR:Ljava/lang/String; = "FakeVideoSet"

.field public static final FAVORITE_BUCKET_STR:Ljava/lang/String; = "Favorite"

.field public static final FAVORITE_BUCKET_SYSTEM_ID:I = 0x1

.field public static final MORE_OTHERS_BUCKET_STR:Ljava/lang/String; = "MoreOthers"

.field public static final MORE_OTHERS_BUCKET_SYSTEM_ID:I = 0x6

.field public static final PANO_BUCKET_STR:Ljava/lang/String; = "Pano"

.field public static final PANO_BUCKET_SYSTEM_ID:I = 0x4

.field public static final SELF_BUCKET_STR:Ljava/lang/String; = "Self"

.field public static final SELF_BUCKET_SYSTEM_ID:I = 0x3

.field public static final VIDEO_BUCKET_STR:Ljava/lang/String; = "Video"

.field public static final VIDEO_BUCKET_SYSTEM_ID:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.gallery.provider"

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
