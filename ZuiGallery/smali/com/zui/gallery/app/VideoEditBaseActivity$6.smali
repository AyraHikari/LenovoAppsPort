.class Lcom/zui/gallery/app/VideoEditBaseActivity$6;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$6;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "VideoEditActivity"

    const-string p3, "cancel dialog"

    .line 1080
    invoke-static {p2, p3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$6;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-boolean p2, p2, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsCompiled:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$6;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object p2, p2, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz p2, :cond_0

    .line 1085
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$6;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object p2, p2, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 1086
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$6;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object p2, p2, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->onPause()V

    .line 1087
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$6;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/zui/gallery/app/VideoEditBaseActivity;->updatePlayIcon(Z)V

    .line 1090
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
