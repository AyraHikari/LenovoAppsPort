.class Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyLoadedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mResId:I

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumLabelMaker;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->mResId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 118
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    .line 119
    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$000(Lcom/zui/gallery/ui/AlbumLabelMaker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->mResId:I

    .line 118
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
