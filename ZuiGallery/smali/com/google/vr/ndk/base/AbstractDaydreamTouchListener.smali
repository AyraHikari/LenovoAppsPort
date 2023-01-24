.class public abstract Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;
.super Ljava/lang/Object;
.source "AbstractDaydreamTouchListener.java"


# static fields
.field static final ANGLE_SAMPLE_TO_LOG:I = 0xc8

.field static final MAX_TOUCH_DISTANCE_METERS:D = 0.015


# instance fields
.field private angleSamplesReceived:I

.field private borderSizeMeters:F

.field private currentMarkerBestDists:[D

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private enabled:Z

.field private lastMotionEventInHeadset:Z

.field private lastTranslation:[F

.field private final logTag:Ljava/lang/String;

.field private markerBestTouch:[I

.field private markersInPixels:[[F

.field private mostTouchesSeen:I

.field private pixelTranslation:[F

.field private rotation:F

.field private touchBestMarker:[I

.field private translation:[F

.field private useRotationalAlignmentCorrection:Z

.field private xMetersPerPixel:F

.field private yMetersPerPixel:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->angleSamplesReceived:I

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 57
    iput-object v1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->enabled:Z

    new-array v1, v0, [F

    .line 66
    iput-object v1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->lastTranslation:[F

    new-array v0, v0, [F

    .line 67
    iput-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->translation:[F

    return-void
.end method

.method private logPhoneAlignment(Landroid/view/MotionEvent;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "viewPosX",
            "viewPosY"
        }
    .end annotation

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 400
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent;-><init>()V

    .line 401
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;-><init>()V

    iput-object v2, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    .line 402
    iget-object v2, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    iput-object v3, v2, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 404
    iget-object v4, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    iget-object v4, v4, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;-><init>()V

    aput-object v5, v4, v3

    .line 405
    iget-object v4, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    iget-object v4, v4, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    aget-object v4, v4, v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v4, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->x:Ljava/lang/Float;

    .line 406
    iget-object v4, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    iget-object v4, v4, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    aget-object v4, v4, v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v5, p3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v4, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->y:Ljava/lang/Float;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    :cond_0
    iget-object v3, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    new-instance v4, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-direct {v4}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;-><init>()V

    iput-object v4, v3, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    .line 409
    iget-object v3, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    iget-object v3, v3, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    iget-object v4, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->x:Ljava/lang/Float;

    .line 410
    iget-object v3, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    iget-object v3, v3, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    iget-object v4, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->y:Ljava/lang/Float;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 412
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    array-length v0, v0

    if-ne v0, v3, :cond_1

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->getRotationRadians(Landroid/view/MotionEvent;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    .line 417
    iget-object v0, v1, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    double-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    .line 418
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    const/16 v6, 0x3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Phone angle in headset (degrees): "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, p3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x31

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "  Touch point 1: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, p2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "  Touch point 2: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 p1, 0x7dc

    .line 423
    invoke-virtual {p0, p1, v1}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logEvent(ILcom/google/common/logging/nano/Vr$VREvent;)V

    return-void
.end method

.method private resetTrackingState()V
    .locals 4

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->lastMotionEventInHeadset:Z

    .line 391
    iget-object v1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    const/4 v3, 0x1

    .line 392
    aput v2, v1, v3

    .line 393
    iput v2, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->rotation:F

    .line 394
    iput v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->mostTouchesSeen:I

    return-void
.end method


# virtual methods
.method public getBoundingRect(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metrics"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 110
    iget-object v2, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    if-eqz v2, :cond_2

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    iget v2, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->xMetersPerPixel:F

    float-to-double v2, v2

    const-wide v4, 0x3f8eb851eb851eb8L    # 0.015

    div-double v2, v4, v2

    .line 116
    iget v6, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->yMetersPerPixel:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 117
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 119
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    move v11, v10

    .line 121
    :goto_0
    iget-object v12, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    array-length v13, v12

    if-ge v9, v13, :cond_1

    .line 122
    aget-object v12, v12, v9

    int-to-double v13, v6

    .line 123
    aget v6, v12, v8

    move v15, v9

    float-to-double v8, v6

    sub-double/2addr v8, v2

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v6, v8

    int-to-double v8, v10

    const/4 v10, 0x0

    .line 124
    aget v13, v12, v10

    float-to-double v13, v13

    add-double/2addr v13, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v16

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v10, v8

    int-to-double v7, v7

    const/4 v9, 0x1

    .line 125
    aget v13, v12, v9

    float-to-double v13, v13

    sub-double/2addr v13, v4

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-double v13, v11

    .line 126
    aget v8, v12, v9

    float-to-double v8, v8

    add-double/2addr v8, v4

    add-double v8, v8, v16

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v11, v8

    add-int/lit8 v9, v15, 0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 131
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 132
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 133
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 134
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5

    .line 111
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    const-string v2, "No touch markers, so there\'s no bounding rect."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method getRotationRadians(Landroid/view/MotionEvent;)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    if-eqz v0, :cond_3

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v3, p1

    float-to-double v3, v3

    float-to-double v5, v1

    .line 375
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 376
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    aget-object v1, p1, v0

    aget v1, v1, v0

    aget-object v5, p1, v2

    aget v5, v5, v0

    sub-float/2addr v1, v5

    .line 377
    aget-object v0, p1, v0

    aget v0, v0, v2

    aget-object p1, p1, v2

    aget p1, p1, v2

    sub-float/2addr v0, p1

    float-to-double v5, v0

    float-to-double v0, v1

    .line 378
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v3, v0

    double-to-float p1, v3

    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, v0, v2

    const v1, 0x40490fdb    # (float)Math.PI

    if-lez v0, :cond_1

    sub-float/2addr p1, v1

    :cond_1
    float-to-double v2, p1

    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    add-float/2addr p1, v1

    :cond_2
    return p1

    .line 369
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    const-string v0, "No touch markers or the wrong number of touch markers."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method getTranslationInPixels([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translation"
        }
    .end annotation

    .line 232
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 236
    aget v0, v0, v1

    aput v0, p1, v1

    return-void

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Translation array too small"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTranslationInScreenSpace([F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translation"
        }
    .end annotation

    .line 85
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    const-string v0, "displayMetrics must be set before calling getTranslationInScreenSpace."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    aput v1, p1, v2

    .line 98
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v3, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    aput v0, p1, v1

    .line 101
    aget v0, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    aput v0, p1, v2

    .line 102
    aget v0, p1, v1

    const/high16 v2, -0x40000000    # -2.0f

    mul-float/2addr v0, v2

    aput v0, p1, v1

    return-void

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Translation array too small"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final handleTouch(Landroid/view/MotionEvent;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "viewPosX",
            "viewPosY"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->processMotionEvent(Landroid/view/MotionEvent;FF)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->translation:[F

    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->getTranslationInScreenSpace([F)V

    .line 153
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->translation:[F

    aget p3, p1, p2

    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->lastTranslation:[F

    aget v1, v0, p2

    cmpl-float p3, p3, v1

    const/4 v1, 0x1

    if-nez p3, :cond_1

    aget p1, p1, v1

    aget p3, v0, v1

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_2

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->lastTranslation:[F

    iget-object p3, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->translation:[F

    aget v0, p3, p2

    aput v0, p1, p2

    .line 155
    aget v0, p3, v1

    aput v0, p1, v1

    .line 156
    aget p1, p3, p2

    aget p2, p3, v1

    iget p3, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->rotation:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->setLensOffset(FFF)V

    :cond_2
    return v1
.end method

.method protected final initWithPhoneParams(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayMetrics",
            "phoneParams"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 166
    invoke-static {p2}, Lcom/google/vr/cardboard/DisplayUtils;->getBorderSizeMeters(Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)F

    move-result p1

    iput p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->borderSizeMeters:F

    .line 168
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {p1}, Lcom/google/vr/cardboard/DisplayUtils;->getMetersPerPixelFromDotsPerInch(F)F

    move-result p1

    iput p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->xMetersPerPixel:F

    .line 169
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {p1}, Lcom/google/vr/cardboard/DisplayUtils;->getMetersPerPixelFromDotsPerInch(F)F

    move-result p1

    iput p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->yMetersPerPixel:F

    .line 172
    invoke-direct {p0}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->resetTrackingState()V

    return-void
.end method

.method protected abstract isDaydreamImageAlignmentEnabled()Z
.end method

.method protected abstract logEvent(ILcom/google/common/logging/nano/Vr$VREvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventCode",
            "event"
        }
    .end annotation
.end method

.method processMotionEvent(Landroid/view/MotionEvent;FF)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "viewPosX",
            "viewPosY"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->viewerNeedsTouchProcessing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 270
    iput-boolean v3, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->lastMotionEventInHeadset:Z

    return v3

    .line 274
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->isDaydreamImageAlignmentEnabled()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    return v4

    .line 279
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 284
    iget v5, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->mostTouchesSeen:I

    if-le v2, v5, :cond_2

    .line 285
    new-array v5, v2, [I

    iput-object v5, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->touchBestMarker:[I

    .line 286
    iput v2, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->mostTouchesSeen:I

    :cond_2
    move v5, v3

    .line 289
    :goto_0
    iget-object v6, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    array-length v6, v6

    const-wide v7, 0x3f2d7dbf487fcb92L    # 2.25E-4

    const/4 v9, -0x1

    if-ge v5, v6, :cond_3

    .line 290
    iget-object v6, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markerBestTouch:[I

    aput v9, v6, v5

    .line 291
    iget-object v6, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->currentMarkerBestDists:[D

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_7

    .line 298
    iget-object v6, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->touchBestMarker:[I

    aput v9, v6, v5

    move v6, v3

    move-wide v10, v7

    .line 299
    :goto_2
    iget-object v12, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    array-length v13, v12

    if-ge v6, v13, :cond_6

    .line 300
    aget-object v12, v12, v6

    aget v12, v12, v3

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float v13, v13, p2

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->xMetersPerPixel:F

    mul-float/2addr v12, v13

    .line 301
    iget-object v13, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    aget-object v13, v13, v6

    aget v13, v13, v4

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float v14, v14, p3

    sub-float/2addr v13, v14

    iget v14, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->yMetersPerPixel:F

    mul-float/2addr v13, v14

    mul-float/2addr v12, v12

    mul-float/2addr v13, v13

    add-float/2addr v12, v13

    float-to-double v12, v12

    cmpg-double v14, v12, v10

    if-gez v14, :cond_4

    .line 305
    iget-object v10, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->touchBestMarker:[I

    aput v6, v10, v5

    move-wide v10, v12

    .line 307
    :cond_4
    iget-object v14, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->currentMarkerBestDists:[D

    aget-wide v15, v14, v6

    cmpg-double v15, v12, v15

    if-gez v15, :cond_5

    .line 308
    aput-wide v12, v14, v6

    .line 309
    iget-object v12, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markerBestTouch:[I

    aput v5, v12, v6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    move v6, v3

    move v7, v6

    move v8, v5

    move v10, v8

    .line 322
    :goto_3
    iget-object v11, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markerBestTouch:[I

    array-length v12, v11

    if-ge v6, v12, :cond_a

    .line 323
    aget v12, v11, v6

    if-eq v12, v9, :cond_9

    .line 326
    iget-object v12, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->touchBestMarker:[I

    aget v13, v11, v6

    aget v12, v12, v13

    if-eq v12, v6, :cond_8

    .line 327
    aput v9, v11, v6

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 330
    aget v11, v11, v6

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float v11, v11, p2

    iget-object v12, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    aget-object v12, v12, v6

    aget v12, v12, v3

    sub-float/2addr v11, v12

    add-float/2addr v8, v11

    .line 331
    iget-object v11, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markerBestTouch:[I

    aget v11, v11, v6

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float v11, v11, p3

    iget-object v12, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    aget-object v12, v12, v6

    aget v12, v12, v4

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    if-lez v7, :cond_b

    .line 338
    iput-boolean v4, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->lastMotionEventInHeadset:Z

    .line 339
    iget-object v6, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    int-to-float v9, v7

    div-float/2addr v8, v9

    aput v8, v6, v3

    div-float/2addr v10, v9

    .line 340
    aput v10, v6, v4

    goto :goto_5

    .line 342
    :cond_b
    iput-boolean v3, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->lastMotionEventInHeadset:Z

    .line 343
    iget-object v6, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->pixelTranslation:[F

    aput v5, v6, v3

    .line 344
    aput v5, v6, v4

    :goto_5
    const/4 v3, 0x2

    if-ne v7, v3, :cond_c

    .line 350
    iget-boolean v3, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->useRotationalAlignmentCorrection:Z

    if-eqz v3, :cond_c

    .line 351
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->getRotationRadians(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->rotation:F

    goto :goto_6

    .line 353
    :cond_c
    iput v5, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->rotation:F

    :goto_6
    if-lez v2, :cond_d

    .line 357
    iget v2, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->angleSamplesReceived:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->angleSamplesReceived:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_d

    .line 359
    invoke-direct/range {p0 .. p3}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logPhoneAlignment(Landroid/view/MotionEvent;FF)V

    :cond_d
    return v4
.end method

.method protected final setDeviceParams(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceParams"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 182
    iget-object v0, p1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    iget-object v0, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-nez v0, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_1

    .line 191
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    const-string v0, "displayMetrics must be set before calling setDeviceParams."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 195
    :cond_1
    iget-object v0, p1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    iget-object v0, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 197
    array-length v1, v0

    new-array v1, v1, [[F

    iput-object v1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    .line 198
    array-length v1, v0

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->currentMarkerBestDists:[D

    .line 199
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markerBestTouch:[I

    const/4 v1, 0x0

    move v2, v1

    .line 201
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 202
    aget-object v3, v0, v2

    .line 203
    iget-object v4, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput-object v6, v4, v2

    .line 204
    aget-object v4, v4, v2

    iget-object v6, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v6, v5

    int-to-float v5, v6

    .line 205
    invoke-virtual {v3}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;->getHorizontal()F

    move-result v6

    iget v7, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->xMetersPerPixel:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v4, v1

    .line 206
    iget-object v4, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    .line 208
    invoke-virtual {v3}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;->getVertical()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->getTrayToLensDistance()F

    move-result v6

    add-float/2addr v3, v6

    iget v6, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->borderSizeMeters:F

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->yMetersPerPixel:F

    div-float/2addr v3, v6

    sub-float/2addr v5, v3

    const/4 v3, 0x1

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_2
    iget-object p1, p1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 213
    invoke-virtual {p1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->getUseRotationalAlignmentCorrection()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->useRotationalAlignmentCorrection:Z

    return-void

    .line 185
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->logTag:Ljava/lang/String;

    const-string v0, "Null deviceParams or no alignment markers found."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 73
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->enabled:Z

    if-nez p1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->resetTrackingState()V

    :cond_0
    return-void
.end method

.method protected abstract setLensOffset(FFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "rotation"
        }
    .end annotation
.end method

.method viewerNeedsTouchProcessing()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->markersInPixels:[[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method wasLastMotionEventInViewer()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;->lastMotionEventInHeadset:Z

    return v0
.end method
