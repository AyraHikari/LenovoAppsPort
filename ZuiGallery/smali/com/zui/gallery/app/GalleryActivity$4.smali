.class Lcom/zui/gallery/app/GalleryActivity$4;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity;->onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/GalleryActivity;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity;ILandroid/os/Bundle;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$4;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    iput p2, p0, Lcom/zui/gallery/app/GalleryActivity$4;->val$state:I

    iput-object p3, p0, Lcom/zui/gallery/app/GalleryActivity$4;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$4;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/app/GalleryActivity$4;->val$state:I

    iget-object v2, p0, Lcom/zui/gallery/app/GalleryActivity$4;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->refresh(ILandroid/os/Bundle;)V

    return-void
.end method
