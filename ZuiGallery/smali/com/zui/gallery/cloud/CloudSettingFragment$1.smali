.class Lcom/zui/gallery/cloud/CloudSettingFragment$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/zui/gallery/cloud/CloudSettingFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$1;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 69
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CloudSettingFragment"

    const-string v0, "FORCE_LOAD"

    .line 71
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$1;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$1;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Loader;->forceLoad()V

    :cond_1
    :goto_0
    return-void
.end method
