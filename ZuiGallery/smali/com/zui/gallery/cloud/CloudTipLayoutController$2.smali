.class Lcom/zui/gallery/cloud/CloudTipLayoutController$2;
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

    .line 106
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$2;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$2;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$202(Lcom/zui/gallery/cloud/CloudTipLayoutController;Z)Z

    .line 110
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$2;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->clearContent()V

    return-void
.end method
