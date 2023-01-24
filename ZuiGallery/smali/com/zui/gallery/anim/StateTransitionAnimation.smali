.class public Lcom/zui/gallery/anim/StateTransitionAnimation;
.super Lcom/zui/gallery/anim/Animation;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;,
        Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;
    }
.end annotation


# static fields
.field public static final mCoverColor:I = 0x99

.field public static final mDefaultBackgroundColor:I = -0x50506

.field public static final mSlidingDistance:I = 0x10e


# instance fields
.field private mCurrentBackgroundAlpha:F

.field private mCurrentBackgroundScale:F

.field private mCurrentContentAlpha:F

.field private mCurrentContentScale:F

.field private mCurrentContentX:F

.field private mCurrentOverlayAlpha:F

.field private mCurrentOverlayScale:F

.field private mCurrentOverlayX:F

.field private mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

.field private mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;Lcom/zui/gallery/glrenderer/RawTexture;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/zui/gallery/anim/Animation;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    :goto_0
    iput-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 286
    iget p1, p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/StateTransitionAnimation;->setDuration(I)V

    .line 287
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget-object p1, p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/StateTransitionAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 288
    iput-object p2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    .line 289
    invoke-static {}, Lcom/zui/gallery/ui/TiledScreenNail;->disableDrawPlaceholder()V

    .line 292
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-static {p1}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->access$100(Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;)Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    move-result-object p1

    sget-object p2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoPickIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    if-ne p1, p2, :cond_1

    const/16 p1, 0x1388

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/StateTransitionAnimation;->setDelay(I)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;Lcom/zui/gallery/glrenderer/RawTexture;)V
    .locals 0

    .line 281
    invoke-static {p1}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->access$000(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/anim/StateTransitionAnimation;-><init>(Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;Lcom/zui/gallery/glrenderer/RawTexture;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;Lcom/zui/gallery/glrenderer/RawTexture;I)V
    .locals 0

    .line 297
    invoke-static {p1}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->access$000(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/anim/StateTransitionAnimation;-><init>(Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;Lcom/zui/gallery/glrenderer/RawTexture;)V

    return-void
.end method

.method private applyOldTexture(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;FFZ)V
    .locals 5

    .line 389
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 390
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 391
    iget-object v2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 392
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getBackgroundColor()[F

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->clearBuffer([F)V

    .line 393
    :cond_1
    invoke-interface {p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->save()V

    .line 394
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    if-nez p5, :cond_2

    sub-float/2addr v3, p3

    .line 396
    invoke-interface {p2, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    .line 398
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    invoke-virtual {p1, p2, v4, v4}, Lcom/zui/gallery/glrenderer/RawTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto/16 :goto_0

    .line 399
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->LEFT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne p1, v2, :cond_4

    mul-int/lit8 p1, v0, 0x2

    int-to-float p1, p1

    .line 400
    iget p3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayX:F

    mul-float/2addr p1, p3

    int-to-float p3, v1

    invoke-interface {p2, p1, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 401
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    mul-int/lit8 v0, v0, -0x2

    neg-int p3, v1

    invoke-virtual {p1, p2, v0, p3}, Lcom/zui/gallery/glrenderer/RawTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 402
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->RIGHT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne p1, v2, :cond_5

    mul-int/lit8 p1, v0, 0x2

    int-to-float p1, p1

    .line 403
    iget p3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayX:F

    mul-float/2addr p1, p3

    int-to-float p3, v1

    invoke-interface {p2, p1, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 404
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    mul-int/lit8 v0, v0, -0x2

    neg-int p3, v1

    invoke-virtual {p1, p2, v0, p3}, Lcom/zui/gallery/glrenderer/RawTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 405
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne p1, v2, :cond_7

    if-nez p5, :cond_6

    .line 407
    iget p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    invoke-interface {p2, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    int-to-float p1, v0

    int-to-float p3, v1

    .line 408
    invoke-interface {p2, p1, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 409
    iget p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    invoke-interface {p2, p1, p1, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    neg-int p1, v0

    int-to-float p1, p1

    neg-int p3, v1

    int-to-float p3, p3

    .line 410
    invoke-interface {p2, p1, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 412
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    invoke-virtual {p1, p2, v4, v4}, Lcom/zui/gallery/glrenderer/RawTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 413
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object p5, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_PICK_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne p1, p5, :cond_8

    .line 414
    iget p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    invoke-interface {p2, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    int-to-float p1, v0

    int-to-float p3, v1

    .line 415
    invoke-interface {p2, p1, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 416
    invoke-interface {p2, p4, p4, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    .line 417
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    neg-int p3, v0

    neg-int p4, v1

    invoke-virtual {p1, p2, p3, p4}, Lcom/zui/gallery/glrenderer/RawTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 419
    :cond_8
    invoke-interface {p2, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    int-to-float p1, v0

    int-to-float p3, v1

    .line 420
    invoke-interface {p2, p1, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 421
    invoke-interface {p2, p4, p4, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    .line 422
    iget-object p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    neg-int p3, v0

    neg-int p4, v1

    invoke-virtual {p1, p2, p3, p4}, Lcom/zui/gallery/glrenderer/RawTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 424
    :goto_0
    invoke-interface {p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private getProgress(FII[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;)F
    .locals 1

    if-nez p4, :cond_0

    return p1

    .line 320
    :cond_0
    aget-object v0, p4, p2

    aget-object v0, v0, p3

    if-nez v0, :cond_1

    return p1

    .line 324
    :cond_1
    aget-object v0, p4, p2

    aget-object v0, v0, p3

    iget v0, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;->Start:F

    .line 325
    aget-object p2, p4, p2

    aget-object p2, p2, p3

    iget p2, p2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;->End:F

    cmpg-float p3, p1, v0

    if-gez p3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    cmpl-float p3, p1, p2

    if-lez p3, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_3
    sub-float/2addr p1, v0

    sub-float/2addr p2, v0

    div-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public applyBackground(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 6

    .line 428
    iget v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    .line 429
    iget v4, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/anim/StateTransitionAnimation;->applyOldTexture(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;FFZ)V

    :cond_0
    return-void
.end method

.method public applyContentTransform(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 5

    .line 434
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 435
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 436
    iget-object v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->LEFT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    int-to-float p1, v0

    .line 437
    iget v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentX:F

    mul-float/2addr p1, v0

    invoke-interface {p2, p1, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    goto/16 :goto_0

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_1

    int-to-float v1, v0

    int-to-float v2, p1

    .line 439
    invoke-interface {p2, v1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 440
    iget v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    sub-float v2, v4, v1

    sub-float v1, v4, v1

    invoke-interface {p2, v2, v1, v4}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int p1, p1

    int-to-float p1, p1

    .line 441
    invoke-interface {p2, v0, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 442
    iget p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    sub-float/2addr v4, p1

    invoke-interface {p2, v4}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->RIGHT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne v1, v2, :cond_2

    neg-int p1, v0

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 444
    iget v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentX:F

    mul-float/2addr p1, v0

    invoke-interface {p2, p1, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 447
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_PICK_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne v1, v2, :cond_4

    .line 448
    iget v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentScale:F

    invoke-interface {p2, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    int-to-float v1, v0

    int-to-float v2, p1

    .line 449
    invoke-interface {p2, v1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 450
    iget v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentScale:F

    invoke-interface {p2, v1, v1, v4}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int p1, p1

    int-to-float p1, p1

    .line 451
    invoke-interface {p2, v0, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 452
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_SWITCH_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne v1, v2, :cond_5

    .line 453
    iget p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    invoke-interface {p2, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    goto :goto_0

    .line 454
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_SWITCH_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne v1, v2, :cond_6

    .line 455
    iget p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    invoke-interface {p2, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    goto :goto_0

    :cond_6
    int-to-float v1, v0

    int-to-float v2, p1

    .line 457
    invoke-interface {p2, v1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 458
    iget v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentScale:F

    invoke-interface {p2, v1, v1, v4}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int p1, p1

    int-to-float p1, p1

    .line 459
    invoke-interface {p2, v0, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 460
    iget p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    invoke-interface {p2, p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public applyOverlay(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 6

    .line 465
    iget v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    .line 466
    iget v4, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/anim/StateTransitionAnimation;->applyOldTexture(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;FFZ)V

    :cond_0
    return-void
.end method

.method public calculate(J)Z
    .locals 0

    .line 302
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/anim/Animation;->calculate(J)Z

    move-result p1

    .line 303
    invoke-virtual {p0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->isActive()Z

    move-result p2

    if-nez p2, :cond_1

    .line 304
    iget-object p2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    if-eqz p2, :cond_0

    .line 305
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/RawTexture;->recycle()V

    const/4 p2, 0x0

    .line 306
    iput-object p2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    .line 308
    :cond_0
    invoke-static {}, Lcom/zui/gallery/ui/TiledScreenNail;->enableDrawPlaceholder()V

    :cond_1
    return p1
.end method

.method protected onCalculate(F)V
    .locals 6

    .line 342
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->getProgress(FII[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;)F

    move-result v0

    .line 344
    iget-object v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v3, v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    iget-object v4, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v4, v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    iget-object v5, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v5, v5, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentScale:F

    .line 347
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->getProgress(FII[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;)F

    move-result v0

    .line 349
    iget-object v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v3, v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    iget-object v4, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v4, v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    iget-object v5, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v5, v5, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    .line 352
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->getProgress(FII[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;)F

    move-result v0

    .line 354
    iget-object v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v3, v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    iget-object v4, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v4, v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    iget-object v5, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v5, v5, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    .line 358
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->getProgress(FII[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;)F

    move-result v0

    .line 360
    iget-object v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v3, v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    iget-object v4, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v4, v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    iget-object v5, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v5, v5, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    .line 364
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->getProgress(FII[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;)F

    move-result v0

    .line 366
    iget-object v2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    iget-object v4, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v4, v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    iget-object v5, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v5, v5, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    iput v2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    .line 369
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->getProgress(FII[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;)F

    move-result v0

    .line 371
    iget-object v2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    iget-object v4, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v4, v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    iget-object v5, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget v5, v5, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    iput v2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    .line 374
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->getProgress(FII[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;)F

    .line 377
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->LEFT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    sub-float/2addr v2, p1

    .line 378
    iput v2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentX:F

    .line 379
    iput v2, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayX:F

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->RIGHT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    if-ne v0, v1, :cond_1

    sub-float v0, v2, p1

    .line 381
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentContentX:F

    add-float/2addr p1, v2

    .line 382
    iput p1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation;->mCurrentOverlayX:F

    :cond_1
    :goto_0
    return-void
.end method
