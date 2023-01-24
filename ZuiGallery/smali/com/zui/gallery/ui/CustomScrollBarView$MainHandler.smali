.class Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;
.super Landroid/os/Handler;
.source "CustomScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/CustomScrollBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_HIDE_SCROLLBAR_ANIM:I = 0x1

.field public static final MSG_SHOW_SCROLLBAR_ANIM:I = 0x2


# instance fields
.field private scrollBarView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/gallery/ui/CustomScrollBarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/CustomScrollBarView;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;->scrollBarView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;->scrollBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/CustomScrollBarView;

    if-eqz v0, :cond_2

    .line 96
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 105
    invoke-static {v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$200(Lcom/zui/gallery/ui/CustomScrollBarView;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 99
    invoke-static {v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$000(Lcom/zui/gallery/ui/CustomScrollBarView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 100
    invoke-static {v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$100(Lcom/zui/gallery/ui/CustomScrollBarView;)V

    :cond_2
    :goto_0
    return-void
.end method
