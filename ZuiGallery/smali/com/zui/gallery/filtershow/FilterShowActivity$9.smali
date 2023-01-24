.class Lcom/zui/gallery/filtershow/FilterShowActivity$9;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1300
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startLoadingIndicator()V

    .line 1302
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1702(Lcom/zui/gallery/filtershow/FilterShowActivity;Z)Z

    .line 1303
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    new-instance v2, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {v2, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-static {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1802(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 1304
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$9;->val$uri:Landroid/net/Uri;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
