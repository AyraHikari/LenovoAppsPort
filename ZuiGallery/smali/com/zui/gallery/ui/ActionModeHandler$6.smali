.class Lcom/zui/gallery/ui/ActionModeHandler$6;
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


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;)V
    .locals 0

    .line 1819
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$6;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "wangcan"

    const-string v1, "album albumId delete success ."

    .line 1823
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
