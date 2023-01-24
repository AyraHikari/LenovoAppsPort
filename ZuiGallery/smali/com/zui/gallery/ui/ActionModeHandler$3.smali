.class Lcom/zui/gallery/ui/ActionModeHandler$3;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V
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

    .line 1515
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$3;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1519
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
