.class Lcom/zui/gallery/picasasource/PicasaSource$EmptyAlbumSet;
.super Lcom/zui/gallery/data/MediaSet;
.source "PicasaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/picasasource/PicasaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyAlbumSet"
.end annotation


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;J)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "picasa"

    return-object v0
.end method

.method public reload()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/zui/gallery/picasasource/PicasaSource$EmptyAlbumSet;->mDataVersion:J

    return-wide v0
.end method
