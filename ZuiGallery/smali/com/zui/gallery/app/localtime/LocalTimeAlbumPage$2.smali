.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;
.super Lcom/zui/gallery/ui/GLView;
.source "LocalTimeAlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 251
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    const/4 p1, 0x0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout ex == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalTimeAlbumPage"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, p1

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    goto :goto_1

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v1

    .line 272
    :goto_1
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 273
    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    .line 276
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 278
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    sub-int p3, p5, p3

    sub-int v1, p4, p2

    .line 289
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getMarginHeight(Lcom/zui/gallery/app/AbstractGalleryActivity;)I

    move-result v2

    sub-int v2, p3, v2

    .line 290
    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/DetailsHelper;

    move-result-object v4

    invoke-virtual {v4, p2, v0, p4, p5}, Lcom/zui/gallery/ui/DetailsHelper;->layout(IIII)V

    goto :goto_3

    .line 293
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setHighlightItemPath(Lcom/zui/gallery/data/Path;)V

    .line 297
    :goto_3
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/RelativePosition;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/RelativePosition;->setReferencePosition(II)V

    .line 298
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->layout(IIII)V

    .line 299
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->mMatrix:[F

    div-int/2addr v1, v3

    int-to-float p2, v1

    div-int/2addr p3, v3

    int-to-float p3, p3

    iget-object p4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    .line 300
    invoke-static {p4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)F

    move-result p4

    neg-float p4, p4

    .line 299
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x2

    .line 305
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 306
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 307
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 309
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1602(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;)Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;->invalidate()V

    .line 320
    :cond_1
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method
