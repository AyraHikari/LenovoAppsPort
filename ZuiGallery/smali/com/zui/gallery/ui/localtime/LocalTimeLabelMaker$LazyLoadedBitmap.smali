.class Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;
.super Ljava/lang/Object;
.source "LocalTimeLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyLoadedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mResId:I

.field final synthetic this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;I)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->mResId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 154
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 155
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    .line 156
    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->mResId:I

    .line 155
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
