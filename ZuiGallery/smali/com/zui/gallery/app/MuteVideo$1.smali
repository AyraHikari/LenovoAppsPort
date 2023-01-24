.class Lcom/zui/gallery/app/MuteVideo$1;
.super Ljava/lang/Object;
.source "MuteVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MuteVideo;->muteInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MuteVideo;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MuteVideo;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v0}, Lcom/zui/gallery/app/MuteVideo;->access$000(Lcom/zui/gallery/app/MuteVideo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v1}, Lcom/zui/gallery/app/MuteVideo;->access$100(Lcom/zui/gallery/app/MuteVideo;)Lcom/zui/gallery/util/SaveVideoFileInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/VideoUtils;->startMute(Ljava/lang/String;Lcom/zui/gallery/util/SaveVideoFileInfo;)V

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    .line 64
    invoke-static {v0}, Lcom/zui/gallery/app/MuteVideo;->access$100(Lcom/zui/gallery/app/MuteVideo;)Lcom/zui/gallery/util/SaveVideoFileInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v1}, Lcom/zui/gallery/app/MuteVideo;->access$200(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v2}, Lcom/zui/gallery/app/MuteVideo;->access$300(Lcom/zui/gallery/app/MuteVideo;)Landroid/net/Uri;

    move-result-object v2

    .line 63
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/util/SaveVideoFileUtils;->insertContent(Lcom/zui/gallery/util/SaveVideoFileInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v0}, Lcom/zui/gallery/app/MuteVideo;->access$200(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v1}, Lcom/zui/gallery/app/MuteVideo;->access$200(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1002af

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v0}, Lcom/zui/gallery/app/MuteVideo;->access$500(Lcom/zui/gallery/app/MuteVideo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/MuteVideo$1$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MuteVideo$1$1;-><init>(Lcom/zui/gallery/app/MuteVideo$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
