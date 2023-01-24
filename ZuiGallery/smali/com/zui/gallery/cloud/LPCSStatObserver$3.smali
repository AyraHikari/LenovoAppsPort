.class Lcom/zui/gallery/cloud/LPCSStatObserver$3;
.super Ljava/lang/Object;
.source "LPCSStatObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/LPCSStatObserver;->onInnerSyncProgress(IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

.field final synthetic val$ex:Landroid/os/Bundle;

.field final synthetic val$progress:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/LPCSStatObserver;IILandroid/os/Bundle;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$3;->this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

    iput p2, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$3;->val$total:I

    iput p3, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$3;->val$progress:I

    iput-object p4, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$3;->val$ex:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$3;->this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

    iget v1, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$3;->val$total:I

    iget v2, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$3;->val$progress:I

    iget-object v3, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$3;->val$ex:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/cloud/LPCSStatObserver;->onSyncProgress(IILandroid/os/Bundle;)V

    return-void
.end method
