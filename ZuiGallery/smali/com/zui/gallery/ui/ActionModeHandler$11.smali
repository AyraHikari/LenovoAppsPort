.class Lcom/zui/gallery/ui/ActionModeHandler$11;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/ActionModeHandler;->doDeleteForFloatDialog(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/ActionModeHandler;

.field final synthetic val$manager:Lcom/zui/gallery/data/DataManager;

.field final synthetic val$path:Lcom/zui/gallery/data/Path;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 2025
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$11;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    iput-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$11;->val$manager:Lcom/zui/gallery/data/DataManager;

    iput-object p3, p0, Lcom/zui/gallery/ui/ActionModeHandler$11;->val$path:Lcom/zui/gallery/data/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2028
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$11;->val$manager:Lcom/zui/gallery/data/DataManager;

    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler$11;->val$path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->delete(Lcom/zui/gallery/data/Path;)V

    return-void
.end method
