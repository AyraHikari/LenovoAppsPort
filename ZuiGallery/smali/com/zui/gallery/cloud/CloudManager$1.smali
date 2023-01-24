.class Lcom/zui/gallery/cloud/CloudManager$1;
.super Lcom/zui/gallery/cloud/LPCSStatObserver;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/cloud/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudManager;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudManager$1;->this$0:Lcom/zui/gallery/cloud/CloudManager;

    invoke-direct {p0}, Lcom/zui/gallery/cloud/LPCSStatObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatChange(ILandroid/os/Bundle;)V
    .locals 4

    .line 64
    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudManager;->access$000(I)I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager$1;->this$0:Lcom/zui/gallery/cloud/CloudManager;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudManager;->access$100(Lcom/zui/gallery/cloud/CloudManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync stat changed:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zui/gallery/cloud/LPCSStat;->value(I)Lcom/zui/gallery/cloud/LPCSStat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;->onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSyncEnd(ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "key_task_task_type"

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_success_task"

    .line 96
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_failed_task"

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "key_total_task"

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v0, :cond_1

    .line 101
    iget-object v4, p0, Lcom/zui/gallery/cloud/CloudManager$1;->this$0:Lcom/zui/gallery/cloud/CloudManager;

    invoke-static {v4}, Lcom/zui/gallery/cloud/CloudManager;->access$100(Lcom/zui/gallery/cloud/CloudManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sync sync end success:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "   msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string/jumbo v7, "\u4e0a\u4f20"

    goto :goto_1

    :cond_0
    const-string/jumbo v7, "\u4e0b\u8f7d"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "success:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  total:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-interface {v5, v6, v7, p3}, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;->onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSyncProgress(IILandroid/os/Bundle;)V
    .locals 7

    const-string p1, "key_task_task_type"

    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "key_uuid"

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_task_result"

    .line 78
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_total_task"

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-nez p1, :cond_1

    .line 82
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 83
    sget-object v3, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_PROGRESS:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    sget-object v3, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_TOTAL:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudManager$1;->this$0:Lcom/zui/gallery/cloud/CloudManager;

    invoke-static {v3}, Lcom/zui/gallery/cloud/CloudManager;->access$100(Lcom/zui/gallery/cloud/CloudManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sync progress totalcount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string/jumbo v6, "\u4e0a\u4f20"

    goto :goto_1

    :cond_0
    const-string/jumbo v6, "\u4e0b\u8f7d"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uuid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-interface {v4, v5, v6, v2}, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;->onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method
