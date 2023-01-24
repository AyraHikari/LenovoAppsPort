.class public final Lcom/zui/gallery/database/GalleryContract$VideoEdit;
.super Ljava/lang/Object;
.source "GalleryContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/zui/gallery/database/GalleryContract$VideoEditColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/database/GalleryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoEdit"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/video_edit"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/video_edit"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTIONS:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "_data=? "

.field public static final TABLE_NAME:Ljava/lang/String; = "video_edit"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "key"

    const-string v3, "media_type"

    const-string v4, "mult"

    const-string/jumbo v5, "startUs"

    const-string v6, "endUs"

    .line 414
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$VideoEdit;->PROJECTIONS:[Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/zui/gallery/database/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "video_edit"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$VideoEdit;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
