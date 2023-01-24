.class Lcom/zui/gallery/app/AlbumAddPage$2;
.super Lcom/zui/gallery/ui/GLView;
.source "AlbumAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumAddPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 173
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 178
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0601c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 183
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$200(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setHighlightItemPath(Lcom/zui/gallery/data/Path;)V

    .line 186
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$300(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/RelativePosition;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/RelativePosition;->setReferencePosition(II)V

    .line 187
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$000(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1, p2, v0, p4, p5}, Lcom/zui/gallery/ui/SlotView;->layout(IIII)V

    .line 188
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->mMatrix:[F

    div-int/lit8 p4, p4, 0x2

    int-to-float p2, p4

    div-int/lit8 p5, p5, 0x2

    int-to-float p3, p5

    iget-object p4, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    .line 189
    invoke-static {p4}, Lcom/zui/gallery/app/AlbumAddPage;->access$400(Lcom/zui/gallery/app/AlbumAddPage;)F

    move-result p4

    neg-float p4, p4

    .line 188
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x2

    .line 194
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 195
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 196
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$500(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/PhotoFallbackEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$500(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/PhotoFallbackEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PhotoFallbackEffect;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumAddPage;->access$502(Lcom/zui/gallery/app/AlbumAddPage;Lcom/zui/gallery/ui/PhotoFallbackEffect;)Lcom/zui/gallery/ui/PhotoFallbackEffect;

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$200(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumAddPage$2;->invalidate()V

    .line 209
    :cond_1
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method
