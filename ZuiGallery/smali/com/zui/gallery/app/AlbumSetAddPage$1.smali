.class Lcom/zui/gallery/app/AlbumSetAddPage$1;
.super Lcom/zui/gallery/ui/GLView;
.source "AlbumSetAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 216
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$000(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/app/EyePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/EyePosition;->resetPosition()V

    .line 222
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActionBar;->getHeight()I

    move-result p1

    .line 223
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 224
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 225
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v2

    .line 226
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v3, v3, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v3, p1

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    .line 227
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v4, v4, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 231
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    sub-int/2addr p5, p3

    .line 233
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object p1

    iget p1, p1, Lcom/zui/gallery/app/Config$AlbumSetPage;->paddingBottom:I

    sub-int/2addr p5, p1

    sub-int/2addr p4, p2

    .line 236
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$200(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->setHighlightItemPath(Lcom/zui/gallery/data/Path;)V

    .line 238
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$300(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1, p4, p5}, Lcom/zui/gallery/ui/AlbumSetSlotView;->layout(IIII)V

    return-void
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 4

    const/4 v0, 0x2

    .line 243
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 244
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->mMatrix:[F

    .line 245
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetAddPage$1;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$400(Lcom/zui/gallery/app/AlbumSetAddPage;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetAddPage$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$500(Lcom/zui/gallery/app/AlbumSetAddPage;)F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$600(Lcom/zui/gallery/app/AlbumSetAddPage;)F

    move-result v3

    .line 244
    invoke-static {v1, v2, v0, v3}, Lcom/zui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 247
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 248
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method
