.class Lcom/zui/gallery/app/VideoEditBaseActivity$4;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity;->initCompileCallBack(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

.field final synthetic val$deleteOrginFile:Z

.field final synthetic val$trimResultPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/VideoEditBaseActivity;ZLjava/lang/String;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iput-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->val$deleteOrginFile:Z

    iput-object p3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->val$trimResultPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompileCompleted(Lcom/meicam/sdk/NvsTimeline;Z)V
    .locals 3

    .line 918
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompileCompleted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoEditActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 920
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->val$deleteOrginFile:Z

    iget-object v1, p2, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->val$trimResultPath:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->doSave(ZLjava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-static {p2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$200(Lcom/zui/gallery/app/VideoEditBaseActivity;)Lzui/app/ProgressDialogX;

    move-result-object p2

    invoke-virtual {p2}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 922
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-static {p2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$300(Lcom/zui/gallery/app/VideoEditBaseActivity;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->val$trimResultPath:Ljava/lang/String;

    aput-object v1, v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    .line 924
    invoke-static {v2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$400(Lcom/zui/gallery/app/VideoEditBaseActivity;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    move-result-object v2

    .line 922
    invoke-static {p2, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 926
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    const-string/jumbo v0, "\u751f\u6210\u89c6\u9891\u5931\u8d25"

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 927
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-static {p2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$200(Lcom/zui/gallery/app/VideoEditBaseActivity;)Lzui/app/ProgressDialogX;

    move-result-object p2

    invoke-virtual {p2}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 929
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iput-boolean p1, p2, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsCompiled:Z

    return-void
.end method
