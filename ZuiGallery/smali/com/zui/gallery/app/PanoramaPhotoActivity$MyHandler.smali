.class Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;
.super Landroid/os/Handler;
.source "PanoramaPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_HIDE:I = 0x2

.field public static final MSG_SHOW:I = 0x1


# instance fields
.field private refActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/gallery/app/PanoramaPhotoActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->refActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;

    if-eqz v0, :cond_1

    .line 146
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 148
    invoke-static {v0, v1, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$000(Lcom/zui/gallery/app/PanoramaPhotoActivity;ZZ)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    .line 150
    invoke-static {v0, p1, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$000(Lcom/zui/gallery/app/PanoramaPhotoActivity;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
