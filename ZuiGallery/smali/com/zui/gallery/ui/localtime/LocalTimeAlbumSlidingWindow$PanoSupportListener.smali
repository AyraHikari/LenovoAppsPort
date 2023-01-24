.class Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$PanoSupportListener;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSlidingWindow.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoSupportListener"
.end annotation


# instance fields
.field public final mEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    return-void
.end method


# virtual methods
.method public panoramaInfoAvailable(Lcom/zui/gallery/data/MediaObject;ZZ)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    if-eqz p1, :cond_0

    .line 204
    iput-boolean p2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    :cond_0
    return-void
.end method
