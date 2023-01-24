.class Lcom/zui/gallery/ui/ActionModeHandler$4;
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

.field final synthetic val$path:Lcom/zui/gallery/data/Path;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 1494
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    iput-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->val$path:Lcom/zui/gallery/data/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1497
    iget-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {p2}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p2

    .line 1498
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->val$path:Lcom/zui/gallery/data/Path;

    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p2

    .line 1499
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v0

    check-cast p2, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p2}, Lcom/zui/gallery/app/OptimizationAlbum;->setLongTapItem(Lcom/zui/gallery/data/MediaSet;)V

    .line 1500
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1503
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$600(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1504
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$600(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onProgressStart()V

    const-string/jumbo p1, "tianlianglaa"

    const-string p2, "Actionmode handler call onProgressconplete"

    .line 1505
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$600(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)Z

    .line 1509
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$4;->val$path:Lcom/zui/gallery/data/Path;

    invoke-static {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$600(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$1400(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/data/Path;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I

    .line 1512
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->ALBUMSETPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object p2, Lcom/zui/gallery/util/AvatarUtils$Action;->LONG_PRESS_ALBUM_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1, p2, v1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    return-void
.end method
