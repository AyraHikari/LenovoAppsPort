.class Lcom/zui/gallery/cloud/CloudTipLayoutController$3;
.super Ljava/lang/Object;
.source "CloudTipLayoutController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudTipLayoutController;->refresh(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudTipLayoutController;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$3;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$3;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$000(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$3;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$000(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudUtils;->startSpaceErrorActivity(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
