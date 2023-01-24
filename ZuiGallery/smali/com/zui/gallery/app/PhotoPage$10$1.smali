.class Lcom/zui/gallery/app/PhotoPage$10$1;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage$10;->onEncryptSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/PhotoPage$10;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage$10;)V
    .locals 0

    .line 3749
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$10$1;->this$1:Lcom/zui/gallery/app/PhotoPage$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3752
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$10$1;->this$1:Lcom/zui/gallery/app/PhotoPage$10;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPage;->dismissLoadingDialog()V

    .line 3753
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$10$1;->this$1:Lcom/zui/gallery/app/PhotoPage$10;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage$10$1;->this$1:Lcom/zui/gallery/app/PhotoPage$10;

    iget-object v1, v1, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v1, v1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
