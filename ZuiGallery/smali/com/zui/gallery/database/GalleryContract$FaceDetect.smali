.class public final Lcom/zui/gallery/database/GalleryContract$FaceDetect;
.super Ljava/lang/Object;
.source "GalleryContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/zui/gallery/database/GalleryContract$FaceDetectColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/database/GalleryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceDetect"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/facedetect"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/facedetect"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTIONS:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "image_item_key=?"

.field public static final TABLE_NAME:Ljava/lang/String; = "facedetect"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "image_item_key"

    .line 334
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$FaceDetect;->PROJECTIONS:[Ljava/lang/String;

    .line 343
    sget-object v0, Lcom/zui/gallery/database/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "facedetect"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$FaceDetect;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
