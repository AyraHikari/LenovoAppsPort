.class Lcom/zui/gallery/filtershow/FilterShowActivity$11$2;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity$11;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$11;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity$11;Ljava/lang/String;)V
    .locals 0

    .line 2381
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11$2;->this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$11;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2384
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11$2;->this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$11;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$3100(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/lang/String;)V

    const-string v0, "errortoast"

    const-string v1, "run: errortoast"

    .line 2385
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11$2;->this$1:Lcom/zui/gallery/filtershow/FilterShowActivity$11;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const v1, 0x7f100226

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2389
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2391
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_EDITOR_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    return-void
.end method
