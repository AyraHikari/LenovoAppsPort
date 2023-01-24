.class Lcom/zui/gallery/app/GalleryActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$2;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "GalleryActivity"

    const-string p2, "receive login from setting"

    .line 136
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$2;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/GalleryActivity;->access$000(Lcom/zui/gallery/app/GalleryActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$2;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/GalleryActivity;->access$000(Lcom/zui/gallery/app/GalleryActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/GalleryActivity$2;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-static {p2}, Lcom/zui/gallery/app/GalleryActivity;->access$000(Lcom/zui/gallery/app/GalleryActivity;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
