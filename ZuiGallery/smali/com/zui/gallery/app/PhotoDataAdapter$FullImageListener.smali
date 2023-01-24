.class Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/zui/gallery/util/FutureListener<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Lcom/zui/gallery/data/Path;

.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;->mPath:Lcom/zui/gallery/data/Path;

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .line 1123
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/zui/gallery/util/Future;

    .line 1124
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$900(Lcom/zui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    .line 1125
    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$900(Lcom/zui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1124
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 1130
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;->mPath:Lcom/zui/gallery/data/Path;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/zui/gallery/util/Future;

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1000(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/Path;Lcom/zui/gallery/util/Future;)V

    return-void
.end method
