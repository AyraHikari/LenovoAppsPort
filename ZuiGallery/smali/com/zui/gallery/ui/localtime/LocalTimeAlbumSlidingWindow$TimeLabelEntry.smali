.class public Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeLabelEntry"
.end annotation


# instance fields
.field public cacheFlag:I

.field public cacheStatus:I

.field public countTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field public isWaitLoadingDisplayed:Z

.field private labelLoader:Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

.field public labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field public locationInfo:Ljava/lang/String;

.field public locationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field public rotation:I

.field public sourceType:I

.field public timeEntry:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelLoader:Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelLoader:Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    return-object p1
.end method
