.class public Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;
.super Ljava/lang/Thread;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "decodeBitmapThread"
.end annotation


# instance fields
.field private index:I

.field mItem:Lcom/zui/gallery/data/MediaItem;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/data/MediaItem;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2415
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2416
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;->setName(Ljava/lang/String;)V

    .line 2417
    iput-object p2, p0, Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;->mItem:Lcom/zui/gallery/data/MediaItem;

    .line 2418
    iput p3, p0, Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;->index:I

    .line 2419
    iput-object p4, p0, Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2424
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/PhotoView;->access$4800(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2427
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;->map:Ljava/util/Map;

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
