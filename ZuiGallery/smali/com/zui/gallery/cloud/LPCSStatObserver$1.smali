.class Lcom/zui/gallery/cloud/LPCSStatObserver$1;
.super Ljava/lang/Object;
.source "LPCSStatObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/LPCSStatObserver;->onInnerObserve(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

.field final synthetic val$ex:Landroid/os/Bundle;

.field final synthetic val$stat:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/LPCSStatObserver;ILandroid/os/Bundle;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$1;->this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

    iput p2, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$1;->val$stat:I

    iput-object p3, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$1;->val$ex:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$1;->this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

    iget v1, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$1;->val$stat:I

    iget-object v2, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$1;->val$ex:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/cloud/LPCSStatObserver;->onObserve(ILandroid/os/Bundle;)V

    return-void
.end method
