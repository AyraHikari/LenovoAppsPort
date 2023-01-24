.class public interface abstract Lcom/zui/gallery/database/GalleryDatabaseHelper$Tables;
.super Ljava/lang/Object;
.source "GalleryDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/database/GalleryDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tables"
.end annotation


# static fields
.field public static final CS_BEST_SELECT:Ljava/lang/String; = "csbestselect"

.field public static final FACE_DETECT:Ljava/lang/String; = "facedetect"

.field public static final GROUPMEMBERSHIPS:Ljava/lang/String; = "groupmemberships"

.field public static final GROUPS:Ljava/lang/String; = "groups"

.field public static final GROUPS_JOIN_PACKAGES:Ljava/lang/String; = "groups "

.field public static final PRIVACY_FILES:Ljava/lang/String; = "privacy_files"

.field public static final SHADOW_VIDOESHIPS:Ljava/lang/String;

.field public static final TRASH_FILES:Ljava/lang/String; = "trash_files"

.field public static final VIDEO_BEST_SELECT:Ljava/lang/String; = "video_best_select"

.field public static final VIDEO_DEIT:Ljava/lang/String; = "video_edit"

.field public static final WHITES:Ljava/lang/String; = "whites"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->TABLE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/zui/gallery/database/GalleryDatabaseHelper$Tables;->SHADOW_VIDOESHIPS:Ljava/lang/String;

    return-void
.end method
