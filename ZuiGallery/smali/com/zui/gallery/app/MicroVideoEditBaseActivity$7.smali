.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->showCoverWhenFirstLoad(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

.field final synthetic val$cover:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iput-object p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->val$cover:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 849
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 850
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 853
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 854
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    .line 856
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->val$cover:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicroVideo"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v2, v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 859
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v2, v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 861
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-boolean v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isPlaying:Z

    if-nez v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 865
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 866
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method
