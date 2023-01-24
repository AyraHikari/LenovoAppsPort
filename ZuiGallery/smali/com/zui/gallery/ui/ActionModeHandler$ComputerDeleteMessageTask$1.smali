.class Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->showProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask$1;->this$1:Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 294
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask$1;->this$1:Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;

    invoke-static {p1}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->access$200(Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;)Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->cancel(Z)Z

    .line 296
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask$1;->this$1:Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;

    invoke-static {p1}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->access$300(Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
