.class Lcom/zui/gallery/banner/PlayerControl$1;
.super Landroid/os/Handler;
.source "PlayerControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/banner/PlayerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/PlayerControl;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/PlayerControl;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/zui/gallery/banner/PlayerControl$1;->this$0:Lcom/zui/gallery/banner/PlayerControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl$1;->this$0:Lcom/zui/gallery/banner/PlayerControl;

    invoke-static {p1}, Lcom/zui/gallery/banner/PlayerControl;->access$100(Lcom/zui/gallery/banner/PlayerControl;)V

    .line 66
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl$1;->this$0:Lcom/zui/gallery/banner/PlayerControl;

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lcom/zui/gallery/banner/PlayerControl;->access$200(Lcom/zui/gallery/banner/PlayerControl;IJ)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl$1;->this$0:Lcom/zui/gallery/banner/PlayerControl;

    invoke-static {p1}, Lcom/zui/gallery/banner/PlayerControl;->access$000(Lcom/zui/gallery/banner/PlayerControl;)V

    :goto_0
    return-void
.end method
