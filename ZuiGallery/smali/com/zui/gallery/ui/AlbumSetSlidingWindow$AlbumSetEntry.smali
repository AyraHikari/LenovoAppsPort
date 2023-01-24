.class public Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetEntry"
.end annotation


# instance fields
.field public album:Lcom/zui/gallery/data/MediaSet;

.field public bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field public cacheFlag:I

.field public cacheStatus:I

.field public content:Lcom/zui/gallery/glrenderer/Texture;

.field public coverDataVersion:J

.field public coverDataVersion2:J

.field public coverDataVersion3:J

.field public coverItem:Lcom/zui/gallery/data/MediaItem;

.field private coverLoader:Lcom/zui/gallery/ui/BitmapLoader;

.field public desIndex:I

.field public desRect:Landroid/graphics/Rect;

.field public folderNameRect:Landroid/graphics/Rect;

.field public isMoved:Z

.field public isSelected:Z

.field public isWaitLoadingDisplayed:Z

.field private labelLoader:Lcom/zui/gallery/ui/BitmapLoader;

.field public labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field public rotation:I

.field public setDataVersion:J

.field public setPath:Lcom/zui/gallery/data/Path;

.field public sourceType:I

.field public srcIndex:I

.field public srcRect:Landroid/graphics/Rect;

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcRect:Landroid/graphics/Rect;

    .line 182
    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 183
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    .line 184
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desIndex:I

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isSelected:Z

    .line 186
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isMoved:Z

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->folderNameRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/zui/gallery/ui/BitmapLoader;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/zui/gallery/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/zui/gallery/ui/BitmapLoader;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/zui/gallery/ui/BitmapLoader;

    return-object p1
.end method
