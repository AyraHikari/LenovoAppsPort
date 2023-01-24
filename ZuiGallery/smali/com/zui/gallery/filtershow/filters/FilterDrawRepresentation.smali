.class public Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterDrawRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;
    }
.end annotation


# static fields
.field public static DEFAULT_MENU_COLOR1:I = -0x7f010000

.field public static DEFAULT_MENU_COLOR2:I = -0x7fff0100

.field public static DEFAULT_MENU_COLOR3:I = -0x7fffff01

.field public static DEFAULT_MENU_COLOR4:I = -0x80000000

.field public static DEFAULT_MENU_COLOR5:I = -0x7f000001

.field private static final LOGTAG:Ljava/lang/String; = "FilterDrawRepresentation"

.field public static final PARAM_CAPTION:I = 0x4

.field public static final PARAM_COLOR:I = 0x2

.field public static final PARAM_SIZE_DRAW:I = 0x3

.field public static final PARAM_SIZE_MOSAIC:I = 0x0

.field public static final PARAM_STYLE:I = 0x1

.field private static final SERIAL_COLOR:Ljava/lang/String; = "color"

.field private static final SERIAL_DM:Ljava/lang/String; = "dm"

.field private static final SERIAL_ISE:Ljava/lang/String; = "ise"

.field private static final SERIAL_PATH:Ljava/lang/String; = "path"

.field private static final SERIAL_POINTS:Ljava/lang/String; = "points"

.field private static final SERIAL_POINTS_COUNT:Ljava/lang/String; = "point_count"

.field private static final SERIAL_RADIUS:Ljava/lang/String; = "radius"

.field private static final SERIAL_RADIUS_MOSAIC:Ljava/lang/String; = "radiusmosaic"

.field private static final SERIAL_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

.field private mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

.field mCurrentParam:Lcom/zui/gallery/filtershow/controller/Parameter;

.field private mDrawing:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;",
            ">;"
        }
    .end annotation
.end field

.field private mParamCaption:Lcom/zui/gallery/filtershow/controller/ParameterCaption;

.field mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

.field mParamMode:I

.field private mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamSizeDraw:Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;

.field private mParamSizeMosaic:Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;

.field private mParamStyle:Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-string v0, "Draw"

    .line 204
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/4 v3, 0x2

    const/16 v4, 0x12c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 58
    new-instance v0, Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamSizeMosaic:Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;

    .line 59
    new-instance v0, Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;

    const/4 v2, 0x3

    const/16 v6, 0xa

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamSizeDraw:Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;

    .line 60
    new-instance v0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Lcom/zui/gallery/filtershow/controller/ParameterCaption;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamCaption:Lcom/zui/gallery/filtershow/controller/ParameterCaption;

    .line 61
    new-instance v0, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    sget v6, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->DEFAULT_MENU_COLOR1:I

    invoke-direct {v0, v3, v6}, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;-><init>(II)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    .line 63
    new-instance v0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;

    const/4 v6, 0x5

    invoke-direct {v0, v4, v6}, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;-><init>(II)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamStyle:Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;

    .line 71
    iget-object v7, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamSizeMosaic:Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;

    iput-object v7, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrentParam:Lcom/zui/gallery/filtershow/controller/Parameter;

    new-array v6, v6, [Lcom/zui/gallery/filtershow/controller/Parameter;

    aput-object v7, v6, v1

    aput-object v0, v6, v4

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    aput-object v0, v6, v3

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamSizeDraw:Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;

    aput-object v0, v6, v2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamCaption:Lcom/zui/gallery/filtershow/controller/ParameterCaption;

    aput-object v0, v6, v5

    iput-object v6, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    .line 200
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    .line 205
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const-string v0, "DRAW"

    .line 206
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setFilterType(I)V

    const v0, 0x7f100175

    .line 208
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setTextId(I)V

    const v0, 0x7f080174

    .line 209
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setEditorId(I)V

    const v0, 0x7f070198

    .line 210
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setOverlayId(I)V

    .line 211
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setOverlayOnly(Z)V

    return-void
.end method

.method static colorHexString(I)Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private computeCurrentColor()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addPoint(FF)V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v0, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    mul-int/lit8 v0, v0, 0x2

    .line 347
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v0, 0x2

    .line 348
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v2, v2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 349
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v3, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    aput p1, v1, v0

    .line 352
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    add-int/lit8 v0, v0, 0x1

    aput p2, p1, v0

    .line 353
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget p2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public clearCurrentSection()V
    .locals 1

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    return-void
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 231
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;-><init>()V

    .line 232
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 239
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public deSerializeRepresentation(Landroid/util/JsonReader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 409
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 411
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 412
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 414
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;-><init>()V

    .line 416
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 417
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "color"

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    iput v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    goto :goto_1

    :cond_0
    const-string v3, "radius"

    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    goto :goto_1

    :cond_1
    const-string v3, "radiusmosaic"

    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "type"

    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    goto :goto_1

    :cond_3
    const-string v3, "point_count"

    .line 426
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 427
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    iput v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    goto :goto_1

    :cond_4
    const-string v3, "dm"

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    goto :goto_1

    :cond_5
    const-string v3, "ise"

    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 431
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    goto :goto_1

    :cond_6
    const-string v3, "points"

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 435
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    const/4 v2, 0x0

    move v3, v2

    .line 436
    :goto_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 437
    iget-object v5, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    array-length v5, v5

    if-le v4, v5, :cond_7

    .line 438
    iget-object v5, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    mul-int/lit8 v6, v3, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    .line 440
    :cond_7
    iget-object v5, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v3

    move v3, v4

    goto :goto_2

    .line 442
    :cond_8
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    .line 443
    iget-object v4, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    iget-object v5, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    aget v5, v5, v2

    iget-object v6, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    if-ge v2, v3, :cond_9

    .line 445
    iget-object v4, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    iget-object v5, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    aget v5, v5, v2

    iget-object v6, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 447
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 448
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 450
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 453
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 456
    :cond_c
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    .line 458
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public endSection(FF)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->addPoint(FF)V

    .line 358
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 359
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 5

    .line 278
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 281
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-eqz v0, :cond_a

    .line 282
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    .line 283
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 285
    :cond_1
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v2

    :goto_2
    xor-int/2addr v0, v3

    if-eqz v0, :cond_5

    return v1

    .line 290
    :cond_5
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_7

    .line 291
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v0, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    if-ne p1, v0, :cond_6

    return v2

    :cond_6
    return v1

    .line 297
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    move v0, v1

    :goto_3
    if-ge v0, p1, :cond_9

    .line 299
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 300
    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 301
    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    return v2

    :cond_a
    return v1
.end method

.method public fillStrokeParameters(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;)V
    .locals 6

    .line 315
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamStyle:Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->getSelected()I

    move-result v0

    int-to-byte v0, v0

    .line 316
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->computeCurrentColor()I

    move-result v1

    .line 318
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamSizeDraw:Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;->getValue()I

    move-result v2

    int-to-float v2, v2

    .line 319
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamSizeMosaic:Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;->getValue()I

    move-result v3

    int-to-float v3, v3

    .line 320
    sget-boolean v4, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    .line 321
    sget-boolean v5, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 323
    iput v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    .line 324
    iput v2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    .line 325
    iput-byte v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    .line 326
    iput-boolean v4, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    .line 327
    iput-boolean v5, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    .line 328
    iput v3, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    return-void
.end method

.method public getCurrentDrawing()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    return-object v0
.end method

.method public getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamMode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDrawing()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    return-object v0
.end method

.method public getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParamMode()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamMode:I

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 5

    .line 182
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamMode:I

    const-string v1, " +"

    const-string v2, " "

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    const-string v4, ""

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return-object v4

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    aget-object v0, v3, v0

    check-cast v0, Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterSizeDraw;->getValue()I

    move-result v0

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    aget-object v0, v1, v0

    check-cast v0, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->getValue()I

    return-object v4

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    aget-object v0, v3, v0

    check-cast v0, Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterSizeMosaic;->getValue()I

    move-result v0

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 374
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 379
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 382
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 383
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const-string v4, "color"

    .line 384
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget v5, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v4, "radius"

    .line 385
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget v5, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const-string/jumbo v4, "type"

    .line 386
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-byte v5, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v4, "point_count"

    .line 387
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget v5, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v4, "radiusmosaic"

    .line 389
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget v5, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const-string v4, "dm"

    .line 390
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    const-string v4, "ise"

    .line 391
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    const-string v4, "points"

    .line 393
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 395
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 396
    iget v4, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    mul-int/lit8 v4, v4, 0x2

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 398
    iget-object v6, v3, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    aget v6, v6, v5

    float-to-double v6, v6

    invoke-virtual {p1, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 400
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 401
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public setPramMode(I)V
    .locals 1

    .line 97
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamMode:I

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrentParam:Lcom/zui/gallery/filtershow/controller/Parameter;

    return-void
.end method

.method public startNewSection(FFLjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 332
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 333
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->fillStrokeParameters(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;)V

    .line 334
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    .line 335
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 336
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 337
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPoints:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 338
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iput v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    .line 340
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isMosaic:Z

    .line 341
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->isEasrea:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : strokes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    if-nez v1, :cond_0

    const-string v1, " no current "

    goto :goto_0

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-byte v2, v2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v2, v2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 3

    .line 249
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-eqz v0, :cond_2

    .line 250
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->copyPalletFrom(Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;)V

    .line 253
    :try_start_0
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->clone()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    goto :goto_0

    .line 256
    :cond_0
    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 258
    :goto_0
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    .line 260
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 262
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-direct {v2, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;-><init>(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    :cond_1
    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_2

    .line 272
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot use parameters from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterDrawRepresentation"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
