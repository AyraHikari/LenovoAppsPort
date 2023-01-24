.class public final Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;
.super Ljava/lang/Object;
.source "GalleryContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/zui/gallery/database/GalleryContract$ShadowVideoShipsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/database/GalleryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShadowVideoShips"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/shadow_videoships"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/shadow_videoships"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTIONS:[Ljava/lang/String;

.field public static final SELECTION_DETAIL:Ljava/lang/String; = "_data=? AND size =? AND modify_data =? "

.field public static final SELECTION_SAMPLE:Ljava/lang/String; = "_data=? "

.field public static TABLE_NAME:Ljava/lang/String; = "shadow_videoships"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "media_type"

    const-string/jumbo v3, "size"

    const-string v4, "modify_data"

    .line 474
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    .line 480
    sget-object v0, Lcom/zui/gallery/database/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->TABLE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
