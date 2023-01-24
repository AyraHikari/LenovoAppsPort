.class Lcom/zui/gallery/app/MoreAlbumSetPage$1;
.super Lcom/zui/gallery/ui/GLView;
.source "MoreAlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 225
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    .line 230
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$000(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/app/EyePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/EyePosition;->resetPosition()V

    .line 232
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result p1

    .line 233
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 236
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v1, v1, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    add-int/2addr v0, p1

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$100(Lcom/zui/gallery/app/MoreAlbumSetPage;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$200(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/zui/gallery/data/Path;)V

    .line 252
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$300(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    invoke-virtual {p1, v2, v0, p4, p5}, Lcom/zui/gallery/ui/AlbumSetSlotView;->layout(IIII)V

    return-void
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 4

    const/4 v0, 0x2

    .line 257
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 258
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->mMatrix:[F

    .line 259
    invoke-virtual {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v3}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$400(Lcom/zui/gallery/app/MoreAlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v3}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$500(Lcom/zui/gallery/app/MoreAlbumSetPage;)F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v3}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$600(Lcom/zui/gallery/app/MoreAlbumSetPage;)F

    move-result v3

    .line 258
    invoke-static {v1, v2, v0, v3}, Lcom/zui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 260
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 261
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 262
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method
