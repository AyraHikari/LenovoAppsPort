.class abstract Lcom/zui/gallery/ui/PhotoView$PictureDecorator;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PictureDecorator"
.end annotation


# instance fields
.field protected BEST_CHOICE_GAP:I

.field protected SELECT_BUTTON_GAP:I

.field private mBackgroundTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mBestChoiceTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mButtonTexture:Lcom/zui/gallery/glrenderer/ButtonTexture;

.field protected mInitButton:Z

.field protected mIsSelected:Z

.field private mMaskTexture:Lcom/zui/gallery/glrenderer/MaskTexture;

.field private mScreenMaxLength:I

.field final synthetic this$0:Lcom/zui/gallery/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/PhotoView;)V
    .locals 1

    .line 836
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 843
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mInitButton:Z

    const/4 v0, 0x6

    .line 844
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->BEST_CHOICE_GAP:I

    const/16 v0, 0x21

    .line 845
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->SELECT_BUTTON_GAP:I

    .line 847
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mIsSelected:Z

    .line 849
    iput p1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mScreenMaxLength:I

    return-void
.end method


# virtual methods
.method public drawBackground(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 884
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBackgroundTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 887
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1700(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 888
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mScreenMaxLength:I

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBackgroundTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 890
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mScreenMaxLength:I

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBackgroundTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 894
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 895
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 897
    :cond_1
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    if-eqz p2, :cond_2

    .line 900
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->drawInvertedTriangleTexture(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 901
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBackgroundTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v4, 0x0

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_2

    .line 903
    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->drawInvertedTriangleTexture(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 904
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBackgroundTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public drawBestChoiceTexture(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 4

    .line 910
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    const v1, 0x7f06014c

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v0

    .line 911
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBestChoiceTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    if-eqz v1, :cond_1

    .line 912
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 913
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBestChoiceTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr p2, v3

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->SELECT_BUTTON_GAP:I

    add-int/2addr p3, v2

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBestChoiceTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    sub-int/2addr p3, v2

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->BEST_CHOICE_GAP:I

    sub-int/2addr p3, v2

    add-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 915
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBestChoiceTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mScreenMaxLength:I

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBestChoiceTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->BEST_CHOICE_GAP:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p3, p1, p2, v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawButton(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mButtonTexture:Lcom/zui/gallery/glrenderer/ButtonTexture;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 873
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zui/gallery/glrenderer/ButtonTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;FFZ)V

    :cond_0
    return-void
.end method

.method public drawInvertedTriangleTexture(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1600(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/glrenderer/ResourceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1600(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/glrenderer/ResourceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1600(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/glrenderer/ResourceTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1600(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/glrenderer/ResourceTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method

.method public drawMaskTexture(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIZ)V
    .locals 7

    .line 878
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mMaskTexture:Lcom/zui/gallery/glrenderer/MaskTexture;

    if-eqz v0, :cond_0

    int-to-float v2, p2

    int-to-float v3, p3

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    .line 879
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/glrenderer/MaskTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;FFIIZ)V

    :cond_0
    return-void
.end method

.method public getSelectButton()Lcom/zui/gallery/glrenderer/ButtonTexture;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mButtonTexture:Lcom/zui/gallery/glrenderer/ButtonTexture;

    return-object v0
.end method

.method public initButton()V
    .locals 7

    .line 852
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070341

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 853
    new-instance v1, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070395

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 854
    invoke-static {v2, v2, v1, v0}, Lcom/zui/gallery/glrenderer/ButtonTexture;->newInstance(IILcom/zui/gallery/glrenderer/ResourceTexture;Lcom/zui/gallery/glrenderer/ResourceTexture;)Lcom/zui/gallery/glrenderer/ButtonTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mButtonTexture:Lcom/zui/gallery/glrenderer/ButtonTexture;

    .line 856
    new-instance v5, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0702eb

    invoke-direct {v5, v0, v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 857
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/16 v1, 0x12c

    const/16 v2, 0x12c

    const/16 v3, 0x64

    const/16 v4, 0xc8

    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/MaskTexture;->newInstance(IIIILcom/zui/gallery/glrenderer/ResourceTexture;I)Lcom/zui/gallery/glrenderer/MaskTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mMaskTexture:Lcom/zui/gallery/glrenderer/MaskTexture;

    .line 859
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702e9

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBackgroundTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 861
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702ea

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mBestChoiceTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 863
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->mScreenMaxLength:I

    .line 864
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    new-instance v1, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070247

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$1602(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/ResourceTexture;)Lcom/zui/gallery/glrenderer/ResourceTexture;

    return-void
.end method
