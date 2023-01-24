.class public final Lcom/zui/gallery/database/GalleryContract$VideoBestSelect;
.super Ljava/lang/Object;
.source "GalleryContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/zui/gallery/database/GalleryContract$videoBestSelectColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/database/GalleryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoBestSelect"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/video_best_edit"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/video_best_edit"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTIONS:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "_data =? "

.field public static final TABLE_NAME:Ljava/lang/String; = "video_best_select"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "key"

    const-string v3, "media_type"

    const-string v4, "frame_info"

    .line 443
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$VideoBestSelect;->PROJECTIONS:[Ljava/lang/String;

    .line 452
    sget-object v0, Lcom/zui/gallery/database/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "video_best_select"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$VideoBestSelect;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
