.class Lcom/zui/gallery/filtershow/FilterShowActivity$24$1;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$24;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity$24;)V
    .locals 0

    .line 3931
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24$1;->this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3934
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24$1;->this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$24;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void
.end method
