.class Lcom/zui/internal/app/FloatController$1;
.super Ljava/lang/Object;
.source "FloatController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/FloatController;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/FloatController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/FloatController;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/zui/internal/app/FloatController$1;->this$0:Lcom/zui/internal/app/FloatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/zui/internal/app/FloatController$1;->this$0:Lcom/zui/internal/app/FloatController;

    iget-object v0, v0, Lcom/zui/internal/app/FloatController;->mDialogInterface:Landroid/content/DialogInterface;

    check-cast v0, Lzui/app/FloatDialog;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController$1;->this$0:Lcom/zui/internal/app/FloatController;

    invoke-static {v1}, Lcom/zui/internal/app/FloatController;->access$000(Lcom/zui/internal/app/FloatController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-void
.end method
