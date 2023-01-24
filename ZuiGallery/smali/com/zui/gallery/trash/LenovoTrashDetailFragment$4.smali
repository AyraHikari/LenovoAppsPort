.class Lcom/zui/gallery/trash/LenovoTrashDetailFragment$4;
.super Ljava/lang/Object;
.source "LenovoTrashDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->deleteFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$300(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;Z)V

    return-void
.end method
