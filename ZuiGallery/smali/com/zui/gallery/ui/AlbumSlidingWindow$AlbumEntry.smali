.class public Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field public bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field public content:Lcom/zui/gallery/glrenderer/Texture;

.field private contentLoader:Lcom/zui/gallery/ui/BitmapLoader;

.field public continuousCount:I

.field public durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field public isContinuousCover:Z

.field public isGif:Z

.field public isPanorama:Z

.field public isWaitDisplayed:Z

.field public item:Lcom/zui/gallery/data/MediaItem;

.field private mPanoSupportListener:Lcom/zui/gallery/ui/AlbumSlidingWindow$PanoSupportListener;

.field public mediaType:I

.field public path:Lcom/zui/gallery/data/Path;

.field public rotation:I

.field public videoDurationLoader:Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/zui/gallery/ui/BitmapLoader;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/zui/gallery/ui/BitmapLoader;

    return-object p1
.end method
