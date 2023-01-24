.class public Lcom/zui/gallery/filtershow/imageshow/ImageVignette;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageVignette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageVignette"


# instance fields
.field private mActiveHandle:I

.field private mEditorVignette:Lcom/zui/gallery/filtershow/editors/EditorVignette;

.field mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

.field private mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

.field private mVignetteRep:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    .line 40
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-direct {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    const/4 p2, -0x1

    .line 34
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    .line 45
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    return-void
.end method


# virtual methods
.method public computeEllipses()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 200
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 201
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v2

    .line 202
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 203
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 204
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->setTransform(Landroid/graphics/Matrix;Landroid/graphics/Matrix;II)V

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->setCenter(FF)V

    .line 207
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getRadiusX()F

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getRadiusY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->setRadius(FF)V

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mEditorVignette:Lcom/zui/gallery/filtershow/editors/EditorVignette;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->commitLocalRepresentation()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 224
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 229
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v2

    .line 231
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 232
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 233
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->setTransform(Landroid/graphics/Matrix;Landroid/graphics/Matrix;II)V

    .line 234
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->setCenter(FF)V

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getRadiusX()F

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getRadiusY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->setRadius(FF)V

    .line 237
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onSizeChanged(IIII)V

    .line 219
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->computeEllipses()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 141
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 142
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 144
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 149
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->getCloseHandle(FF)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    .line 151
    :cond_1
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    if-ne v1, v2, :cond_4

    .line 152
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 157
    :cond_3
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    .line 163
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 166
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 166
    invoke-virtual {v2, v4, v5}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->setScrImageInfo(Landroid/graphics/Matrix;Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    goto :goto_1

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v0, v2, v1, p1, v4}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->actionMove(IFFLcom/zui/gallery/filtershow/imageshow/Oval;)V

    .line 178
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;)V

    move v2, v3

    goto :goto_1

    .line 172
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mElipse:Lcom/zui/gallery/filtershow/imageshow/EclipseControl;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v0, v1, p1, v4}, Lcom/zui/gallery/filtershow/imageshow/EclipseControl;->actionDown(FFLcom/zui/gallery/filtershow/imageshow/Oval;)V

    :goto_1
    if-nez v2, :cond_7

    .line 183
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->computeEllipses()V

    .line 185
    :cond_7
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->invalidate()V

    return v3
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorVignette;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mEditorVignette:Lcom/zui/gallery/filtershow/editors/EditorVignette;

    return-void
.end method

.method public setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;)V
    .locals 1

    .line 190
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->mScreenOval:Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->setImageOval(Lcom/zui/gallery/filtershow/imageshow/Oval;)V

    .line 192
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette;->computeEllipses()V

    return-void
.end method
