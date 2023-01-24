.class Lcom/zui/gallery/cloud/LPCSStatObserver$4;
.super Ljava/lang/Object;
.source "LPCSStatObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/LPCSStatObserver;->onInnerSyncEnd(ZLjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

.field final synthetic val$ex:Landroid/os/Bundle;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$succ:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/LPCSStatObserver;ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$4;->this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

    iput-boolean p2, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$4;->val$succ:Z

    iput-object p3, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$4;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$4;->val$ex:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$4;->this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

    iget-boolean v1, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$4;->val$succ:Z

    iget-object v2, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$4;->val$msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$4;->val$ex:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/cloud/LPCSStatObserver;->onSyncEnd(ZLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
