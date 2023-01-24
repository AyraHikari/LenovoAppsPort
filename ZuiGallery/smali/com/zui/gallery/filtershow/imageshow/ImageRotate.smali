.class public Lcom/zui/gallery/filtershow/imageshow/ImageRotate;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageRotate.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

.field private mEditorRotate:Lcom/zui/gallery/filtershow/editors/EditorRotate;

.field private mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    .line 33
    new-instance p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    .line 33
    new-instance p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    return-void
.end method


# virtual methods
.method public getFinalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    return-object v0
.end method

.method public getLocalValue()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getRotation()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 68
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->initializeHolder(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 74
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 74
    invoke-static {v1, p1, v0, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->drawTransformedCropped(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public rotate()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->rotateCW()V

    .line 49
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->invalidate()V

    return-void
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorRotate;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mEditorRotate:Lcom/zui/gallery/filtershow/editors/EditorRotate;

    return-void
.end method

.method public setFilterRotateRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;)V
    .locals 0

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    return-void
.end method
