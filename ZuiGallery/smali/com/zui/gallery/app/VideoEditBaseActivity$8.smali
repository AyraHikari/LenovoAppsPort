.class Lcom/zui/gallery/app/VideoEditBaseActivity$8;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity;->showCoverWhenFirstLoad(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

.field final synthetic val$cover:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/VideoEditBaseActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iput-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->val$cover:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1123
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1124
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1125
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1126
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1127
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1128
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1129
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    .line 1130
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->val$cover:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    .line 1131
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v2, v2, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1132
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v2, v2, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1134
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-boolean v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlaying:Z

    if-nez v1, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 1138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method
