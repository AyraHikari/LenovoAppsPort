.class Lcom/zui/gallery/data/ActionImage$BitmapJob;
.super Ljava/lang/Object;
.source "ActionImage.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/ActionImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/zui/gallery/data/ActionImage;


# direct methods
.method protected constructor <init>(Lcom/zui/gallery/data/ActionImage;I)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zui/gallery/data/ActionImage$BitmapJob;->this$0:Lcom/zui/gallery/data/ActionImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p2, p0, Lcom/zui/gallery/data/ActionImage$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4

    .line 61
    iget p1, p0, Lcom/zui/gallery/data/ActionImage$BitmapJob;->mType:I

    invoke-static {p1}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/data/ActionImage$BitmapJob;->this$0:Lcom/zui/gallery/data/ActionImage;

    invoke-static {v0}, Lcom/zui/gallery/data/ActionImage;->access$000(Lcom/zui/gallery/data/ActionImage;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/ActionImage$BitmapJob;->this$0:Lcom/zui/gallery/data/ActionImage;

    .line 63
    invoke-static {v1}, Lcom/zui/gallery/data/ActionImage;->access$100(Lcom/zui/gallery/data/ActionImage;)I

    move-result v1

    .line 62
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/zui/gallery/data/ActionImage$BitmapJob;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 66
    invoke-static {v0, p1, v2}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v0, p1, v2}, Lcom/zui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/ActionImage$BitmapJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
