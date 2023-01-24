.class public Lcom/zui/gallery/data/LocalEmptyMediaItem;
.super Lcom/zui/gallery/data/MediaItem;
.source "LocalEmptyMediaItem.java"


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 20
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public requestLargeImage()Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
