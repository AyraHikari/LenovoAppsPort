.class Lcom/zui/gallery/ui/GLRootView$1;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/GLRootView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/GLRootView;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/zui/gallery/ui/GLRootView$1;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView$1;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v0}, Lcom/zui/gallery/ui/GLRootView;->access$200(Lcom/zui/gallery/ui/GLRootView;)V

    return-void
.end method
