.class Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;->this$2:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;->this$2:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;->this$2:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1$1;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
