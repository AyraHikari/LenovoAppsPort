.class public abstract Lcom/zui/gallery/filtershow/imageshow/ImagePoint;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImagePoint.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageRedEyes"

.field protected static mTouchPadding:F = 80.0f


# instance fields
.field protected mEditorRedEye:Lcom/zui/gallery/filtershow/editors/EditorRedEye;

.field protected mRedEyeRep:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static setTouchPadding(F)V
    .locals 0

    .line 40
    sput p0, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->mTouchPadding:F

    return-void
.end method


# virtual methods
.method protected abstract drawPoint(Lcom/zui/gallery/filtershow/filters/FilterPoint;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 62
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 64
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, -0x10000

    .line 65
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 66
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v7

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v8

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->mRedEyeRep:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterPoint;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v6

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->drawPoint(Lcom/zui/gallery/filtershow/filters/FilterPoint;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetParameter()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->getCurrentFilter()Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->clear()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->invalidate()V

    return-void
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorRedEye;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->mEditorRedEye:Lcom/zui/gallery/filtershow/editors/EditorRedEye;

    return-void
.end method

.method public setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->mRedEyeRep:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    return-void
.end method
