.class Lcom/zui/gallery/app/AlbumPage$2;
.super Lcom/zui/gallery/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 252
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .line 257
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060087

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v0

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, p1

    .line 263
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v2

    :cond_1
    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 270
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget()Z

    move-result p1

    if-nez p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getMarginHeight(Lcom/zui/gallery/app/AbstractGalleryActivity;)I

    move-result p1

    sub-int p1, p5, p1

    goto :goto_1

    :cond_2
    move p1, p5

    .line 274
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$200(Lcom/zui/gallery/app/AlbumPage;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 276
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$300(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/AlbumSlotRenderer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/zui/gallery/data/Path;)V

    .line 280
    :goto_2
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$400(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/RelativePosition;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Lcom/zui/gallery/ui/RelativePosition;->setReferencePosition(II)V

    .line 281
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object p2

    invoke-virtual {p2, v1, v2, p4, p1}, Lcom/zui/gallery/ui/SlotView;->layout(IIII)V

    .line 282
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$2;->mMatrix:[F

    div-int/2addr p4, v0

    int-to-float p2, p4

    div-int/2addr p5, v0

    int-to-float p3, p5

    iget-object p4, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    .line 283
    invoke-static {p4}, Lcom/zui/gallery/app/AlbumPage;->access$500(Lcom/zui/gallery/app/AlbumPage;)F

    move-result p4

    neg-float p4, p4

    .line 282
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x2

    .line 288
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 289
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$2;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 290
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 292
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$600(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/PhotoFallbackEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$600(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/PhotoFallbackEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PhotoFallbackEffect;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumPage;->access$602(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/ui/PhotoFallbackEffect;)Lcom/zui/gallery/ui/PhotoFallbackEffect;

    .line 296
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$2;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$300(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/AlbumSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage$2;->invalidate()V

    .line 303
    :cond_1
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method
