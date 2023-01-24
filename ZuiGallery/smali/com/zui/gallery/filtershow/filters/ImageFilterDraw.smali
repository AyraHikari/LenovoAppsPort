.class public Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;,
        Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;,
        Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;
    }
.end annotation


# static fields
.field public static final BRUSH_STYLE_MARKER:B = 0x2t

.field public static final BRUSH_STYLE_SPATTER:B = 0x1t

.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterDraw"

.field public static final NUMBER_OF_STYLES:I = 0x3

.field public static final SIMPLE_STYLE:B


# instance fields
.field mCachedStrokes:I

.field mCurrentStyle:I

.field mDrawingsTypes:[Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;

.field mOverlayBitmap:Landroid/graphics/Bitmap;

.field mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

.field private mScale:F

.field otherPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

.field private previewh:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 64
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCurrentStyle:I

    .line 59
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->previewh:I

    .line 62
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;

    .line 68
    new-instance v2, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;-><init>(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;I)V

    aput-object v2, v1, v0

    new-instance v2, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$SimpleDraw;-><init>(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;

    const v3, 0x7f0700a3

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;-><init>(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;

    const v3, 0x7f0700a4

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;-><init>(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;

    const v3, 0x7f0700a6

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$Brush;-><init>(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 77
    aget-object v1, v1, v0

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;->setType(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "Image Draw"

    .line 65
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->saveBitmap(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->showPreview(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private saveBitmap(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    .line 139
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 141
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 143
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 148
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 149
    iget-object v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 150
    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    if-eqz v2, :cond_0

    .line 151
    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 153
    :cond_0
    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 156
    :cond_1
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    if-eqz v0, :cond_2

    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 158
    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 159
    sget-object v1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeWidth(F)V

    .line 160
    sget-object p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 162
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 163
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 170
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    if-nez v1, :cond_3

    const/high16 v1, -0x10000

    .line 173
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 175
    :cond_3
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    :goto_1
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 180
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 182
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method private showPreview(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    .line 187
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 190
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 192
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 198
    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 205
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    if-nez v1, :cond_1

    const/high16 v1, -0x10000

    .line 207
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 209
    :cond_1
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    :goto_0
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 215
    :goto_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 216
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 218
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 221
    :cond_2
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    if-eqz v0, :cond_3

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 223
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 225
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 231
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 232
    iget-object v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 233
    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 236
    :cond_3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 237
    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 238
    sget v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 240
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->otherPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    if-nez v1, :cond_4

    .line 241
    sget-object v1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeWidth(F)V

    .line 242
    sget-object p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 244
    :cond_4
    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeWidth(F)V

    .line 245
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->otherPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->otherPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeWidth(F)V

    .line 250
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->otherPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 5

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 453
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 456
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 457
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 458
    invoke-virtual {p0, p2, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object p2

    .line 459
    sget-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    int-to-float v0, v0

    .line 460
    iget v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->previewh:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mScale:F

    .line 461
    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->generateDrawPaintSave(Landroid/graphics/Bitmap;F)Lcom/zui/gallery/ui/mosaic/CPaint;

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 462
    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->drawData(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const/4 p2, 0x0

    .line 465
    invoke-virtual {v1, v0, p2, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 468
    :cond_0
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->previewh:I

    .line 469
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    .line 470
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-nez v0, :cond_1

    .line 471
    iput v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    .line 472
    :cond_1
    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->generateDrawPaint(Landroid/graphics/Bitmap;)Lcom/zui/gallery/ui/mosaic/CPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->otherPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    .line 474
    sget-boolean v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorCancel:Z

    if-eqz v0, :cond_2

    .line 475
    iput-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 480
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-nez v0, :cond_3

    .line 481
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v0, :cond_4

    .line 483
    :cond_3
    iput-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 486
    :cond_4
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->drawData(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_0

    .line 489
    :cond_5
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-nez v0, :cond_6

    .line 490
    iput v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    .line 492
    :cond_6
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->drawData(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :goto_0
    return-object p1
.end method

.method public convertBmp(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;
    .locals 11

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 411
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 412
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 413
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p3, :cond_0

    .line 415
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 416
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 419
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move v3, v7

    move v4, v8

    .line 425
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 426
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p2, v1, v1, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v1, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v10, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v9
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 444
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCurrentStyle:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;->paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public drawData(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    .line 344
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    .line 346
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 348
    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 350
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v3, -0x10000

    .line 351
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x42200000    # 40.0f

    .line 352
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentDrawing()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    const/4 p1, -0x1

    .line 356
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    return-void

    :cond_1
    if-ne p3, v1, :cond_3

    .line 361
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 362
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    .line 366
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 367
    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 368
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 369
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    .line 371
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v5, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    if-le v4, v5, :cond_5

    .line 375
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 374
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 376
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    .line 377
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v4

    instance-of v4, v4, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v4, :cond_5

    .line 378
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 382
    :cond_5
    iget v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 383
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->fillBuffer(Landroid/graphics/Matrix;)V

    .line 385
    :cond_6
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v4

    instance-of v4, v4, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    .line 386
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v4

    iget-boolean v4, v4, Lcom/zui/gallery/filtershow/FilterShowActivity;->isMirrorHor:Z

    invoke-virtual {p0, v3, v4, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->convertBmp(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 390
    :cond_7
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentDrawing()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v1

    .line 392
    sget-boolean v3, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 394
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 395
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_8

    .line 397
    invoke-virtual {p0, v1, v3, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 398
    :cond_8
    invoke-virtual {p1, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 400
    :cond_9
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_a

    .line 402
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public fillBuffer(Landroid/graphics/Matrix;)V
    .locals 6

    .line 432
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 433
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 436
    iget v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    :goto_0
    if-ge v3, v2, :cond_0

    .line 437
    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v0, p1, v5}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    :cond_0
    iput v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    return-void
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 84
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;-><init>()V

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCurrentStyle:I

    return v0
.end method

.method paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;

    iget-byte v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;->paint(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public setStyle(B)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/zui/gallery/filtershow/filters/ImageFilterDraw$DrawStyle;

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mCurrentStyle:I

    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 89
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    .line 90
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    return-void
.end method
