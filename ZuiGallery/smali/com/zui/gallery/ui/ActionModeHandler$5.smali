.class Lcom/zui/gallery/ui/ActionModeHandler$5;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/ActionModeHandler;->doDeleteForFloatDialog(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/ActionModeHandler;

.field final synthetic val$allCloudAlbums:Ljava/util/List;

.field final synthetic val$ls:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;[Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1715
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$5;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    iput-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$5;->val$ls:[Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/gallery/ui/ActionModeHandler$5;->val$allCloudAlbums:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1718
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$5;->val$ls:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1719
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v0, v1

    .line 1720
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    .line 1721
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler$5;->val$allCloudAlbums:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1722
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler$5;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v2}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v2, v1, v0}, Lcom/zui/gallery/cloud/CloudUtils;->deleteCloudFileIfExist(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
