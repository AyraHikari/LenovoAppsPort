.class Lcom/zui/gallery/app/AlbumSetPage$1;
.super Lcom/zui/gallery/ui/GLView;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 240
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    .line 245
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$000(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/app/EyePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/EyePosition;->resetPosition()V

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result p1

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 251
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 253
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 254
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 255
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v1, v1, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v0

    :cond_1
    add-int/2addr v2, p1

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 269
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getMarginHeight(Lcom/zui/gallery/app/AbstractGalleryActivity;)I

    move-result p1

    sub-int/2addr p5, p1

    .line 271
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$100(Lcom/zui/gallery/app/AlbumSetPage;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$200(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/zui/gallery/data/Path;)V

    .line 276
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$300(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    invoke-virtual {p1, v0, v2, p4, p5}, Lcom/zui/gallery/ui/AlbumSetSlotView;->layout(IIII)V

    return-void
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 4

    const/4 v0, 0x2

    .line 281
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 282
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->mMatrix:[F

    .line 283
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetPage$1;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetPage;->access$400(Lcom/zui/gallery/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetPage$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetPage;->access$500(Lcom/zui/gallery/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetPage;->access$600(Lcom/zui/gallery/app/AlbumSetPage;)F

    move-result v3

    .line 282
    invoke-static {v1, v2, v0, v3}, Lcom/zui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 284
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 285
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 286
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method
