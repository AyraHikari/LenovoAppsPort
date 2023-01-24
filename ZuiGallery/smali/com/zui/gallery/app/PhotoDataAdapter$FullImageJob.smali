.class Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullImageJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/zui/gallery/data/MediaItem;

.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    iput-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-static {v0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$500(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isMotoDevicie()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->requestLargeImage()Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 981
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    return-object p1
.end method
