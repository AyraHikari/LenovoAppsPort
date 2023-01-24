.class Lcom/zui/gallery/app/SlideshowPage$2;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/SlideshowPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/SlideshowPage;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$2;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 128
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$2;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-static {p1}, Lcom/zui/gallery/app/SlideshowPage;->access$100(Lcom/zui/gallery/app/SlideshowPage;)V

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$2;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-static {p1}, Lcom/zui/gallery/app/SlideshowPage;->access$200(Lcom/zui/gallery/app/SlideshowPage;)V

    :goto_0
    return-void
.end method
