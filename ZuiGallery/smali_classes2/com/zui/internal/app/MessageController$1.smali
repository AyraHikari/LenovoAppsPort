.class Lcom/zui/internal/app/MessageController$1;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/MessageController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/MessageController;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zui/internal/app/MessageController$1;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$1;->this$0:Lcom/zui/internal/app/MessageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/internal/app/MessageController;->setEditorErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
