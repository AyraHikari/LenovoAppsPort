.class Lcom/zui/gallery/app/PhotoDataAdapter$1;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/Path;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$200(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    return-void

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 232
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 242
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;->onLoadingFinished(Z)V

    :cond_3
    return-void

    .line 235
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 236
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;->onLoadingStarted()V

    :cond_5
    return-void
.end method
