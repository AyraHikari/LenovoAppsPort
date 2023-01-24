.class Lcom/zui/gallery/cloud/CloudSettingFragment$2;
.super Landroid/database/ContentObserver;
.source "CloudSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudSettingFragment;Landroid/os/Handler;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$2;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 85
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$2;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$2;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
