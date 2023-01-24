.class Lcom/zui/gallery/app/PanoramaPhotoActivity$4;
.super Ljava/lang/Object;
.source "PanoramaPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const v3, 0x7f08027a

    if-ne v0, v3, :cond_1

    .line 463
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->removeMessages(I)V

    .line 464
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 465
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$300(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->left:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->right:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->left:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    :goto_0
    invoke-static {p1, v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$302(Lcom/zui/gallery/app/PanoramaPhotoActivity;Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;)Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    .line 466
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 467
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1000(Lcom/zui/gallery/app/PanoramaPhotoActivity;Landroid/content/Intent;)V

    goto :goto_1

    .line 468
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08027b

    if-ne p1, v0, :cond_2

    .line 469
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->removeMessages(I)V

    .line 470
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void
.end method
