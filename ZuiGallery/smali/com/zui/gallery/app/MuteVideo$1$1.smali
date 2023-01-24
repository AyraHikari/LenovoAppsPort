.class Lcom/zui/gallery/app/MuteVideo$1$1;
.super Ljava/lang/Object;
.source "MuteVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MuteVideo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/MuteVideo$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MuteVideo$1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    iget-object v0, v0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v0}, Lcom/zui/gallery/app/MuteVideo;->access$200(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    iget-object v1, v1, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    .line 74
    invoke-static {v1}, Lcom/zui/gallery/app/MuteVideo;->access$200(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    iget-object v3, v3, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    .line 75
    invoke-static {v3}, Lcom/zui/gallery/app/MuteVideo;->access$100(Lcom/zui/gallery/app/MuteVideo;)Lcom/zui/gallery/util/SaveVideoFileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100229

    .line 74
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    iget-object v0, v0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v0}, Lcom/zui/gallery/app/MuteVideo;->access$400(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    iget-object v0, v0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v0}, Lcom/zui/gallery/app/MuteVideo;->access$400(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    iget-object v0, v0, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/MuteVideo;->access$402(Lcom/zui/gallery/app/MuteVideo;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    iget-object v1, v1, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v1}, Lcom/zui/gallery/app/MuteVideo;->access$100(Lcom/zui/gallery/app/MuteVideo;)Lcom/zui/gallery/util/SaveVideoFileInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.finishOnCompletion"

    .line 87
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo$1$1;->this$1:Lcom/zui/gallery/app/MuteVideo$1;

    iget-object v1, v1, Lcom/zui/gallery/app/MuteVideo$1;->this$0:Lcom/zui/gallery/app/MuteVideo;

    invoke-static {v1}, Lcom/zui/gallery/app/MuteVideo;->access$200(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
