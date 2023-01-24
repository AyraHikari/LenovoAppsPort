.class public Lcom/zui/gallery/data/SnailItem;
.super Lcom/zui/gallery/data/MediaItem;
.source "SnailItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnailItem"


# instance fields
.field private mScreenNail:Lcom/zui/gallery/ui/ScreenNail;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;)V
    .locals 2

    .line 35
    invoke-static {}, Lcom/zui/gallery/data/SnailItem;->nextVersionNumber()J

    move-result-wide v0

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

    const-string v0, ""

    return-object v0
.end method

.method public getScreenNail()Lcom/zui/gallery/ui/ScreenNail;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/data/SnailItem;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

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

    .line 41
    new-instance p1, Lcom/zui/gallery/data/SnailItem$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/data/SnailItem$1;-><init>(Lcom/zui/gallery/data/SnailItem;)V

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

    .line 52
    new-instance v0, Lcom/zui/gallery/data/SnailItem$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/SnailItem$2;-><init>(Lcom/zui/gallery/data/SnailItem;)V

    return-object v0
.end method

.method public setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/zui/gallery/data/SnailItem;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    return-void
.end method

.method public updateVersion()V
    .locals 2

    .line 93
    invoke-static {}, Lcom/zui/gallery/data/SnailItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/SnailItem;->mDataVersion:J

    return-void
.end method
