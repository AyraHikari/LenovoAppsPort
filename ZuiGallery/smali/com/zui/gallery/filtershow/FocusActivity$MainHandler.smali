.class public Lcom/zui/gallery/filtershow/FocusActivity$MainHandler;
.super Landroid/os/Handler;
.source "FocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_REDRAW:I = 0x1


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/gallery/filtershow/FocusActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/os/Looper;)V
    .locals 0

    .line 151
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FocusActivity$MainHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$MainHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FocusActivity;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 163
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$100(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 165
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$000(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$100(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/graphics/Bitmap;)V

    .line 169
    :goto_1
    invoke-static {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$200(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    :goto_2
    return-void
.end method
