.class Lcom/zui/gallery/data/CloudImage$1;
.super Ljava/lang/Object;
.source "CloudImage.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/CloudImage;->prepareInputFile(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/CloudImage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/CloudImage;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage$1;->this$0:Lcom/zui/gallery/data/CloudImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 289
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
