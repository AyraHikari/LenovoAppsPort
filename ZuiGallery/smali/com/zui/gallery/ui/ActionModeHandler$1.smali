.class Lcom/zui/gallery/ui/ActionModeHandler$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/ActionModeHandler;
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

    .line 537
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$1;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 0

    .line 540
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$1;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$500(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    const/4 p1, 0x0

    return p1
.end method
