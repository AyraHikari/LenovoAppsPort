.class public Lcom/zui/gallery/data/ActionImage;
.super Lcom/zui/gallery/data/MediaItem;
.source "ActionImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/ActionImage$BitmapJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionImage"


# instance fields
.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mResourceId:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/zui/gallery/data/ActionImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 38
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    iput-object p1, p0, Lcom/zui/gallery/data/ActionImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 39
    iput p3, p0, Lcom/zui/gallery/data/ActionImage;->mResourceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/data/ActionImage;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/data/ActionImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/ActionImage;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/data/ActionImage;->mResourceId:I

    return p0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const/16 v0, 0x4000

    return v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/zui/gallery/data/ActionImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/data/ActionImage$BitmapJob;-><init>(Lcom/zui/gallery/data/ActionImage;I)V

    return-object v0
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
