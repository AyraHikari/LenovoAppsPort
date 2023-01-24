.class Lcom/zui/gallery/app/PhotoPage$21;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->updateTitleBarRightView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 4589
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$21;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 4592
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$21;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->resetThirdAppCall()V

    .line 4594
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4595
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$21;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const/16 v1, 0xa

    .line 4596
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "media-path"

    .line 4595
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4597
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$21;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    .line 4598
    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getSecondStatNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4599
    instance-of v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    if-eqz v1, :cond_0

    .line 4600
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$21;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_0

    .line 4604
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage$21;->this$0:Lcom/zui/gallery/app/PhotoPage;

    const-class v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4606
    :catch_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$21;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    :goto_0
    return-void
.end method
