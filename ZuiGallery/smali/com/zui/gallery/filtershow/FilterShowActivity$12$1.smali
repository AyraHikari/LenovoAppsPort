.class Lcom/zui/gallery/filtershow/FilterShowActivity$12$1;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity$12;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$12;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity$12;Ljava/lang/String;)V
    .locals 0

    .line 2493
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$12$1;->this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$12;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$12$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2496
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$12$1;->this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$12;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity$12;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$12$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$3100(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/lang/String;)V

    return-void
.end method
