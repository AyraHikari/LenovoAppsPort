.class Lcom/zui/gallery/filtershow/data/UserPresetsManager$1;
.super Landroid/os/Handler;
.source "UserPresetsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/data/UserPresetsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/data/UserPresetsManager;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/data/UserPresetsManager;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager$1;->this$0:Lcom/zui/gallery/filtershow/data/UserPresetsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager$1;->this$0:Lcom/zui/gallery/filtershow/data/UserPresetsManager;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->access$000(Lcom/zui/gallery/filtershow/data/UserPresetsManager;Landroid/os/Message;)V

    :goto_0
    return-void
.end method
