.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$5;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$5;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "MicroVideo"

    const-string p3, "cancel dialog"

    .line 810
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$5;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-static {p2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$500(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Lcom/zui/gallery/util/Future;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 812
    iget-object p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$5;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-static {p2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$500(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Lcom/zui/gallery/util/Future;

    move-result-object p2

    invoke-interface {p2}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 814
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
