.class Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/glrenderer/GLES11Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLState"
.end annotation


# instance fields
.field private mBlendEnabled:Z

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLineSmooth:Z

.field private mLineWidth:F

.field private mTexEnvMode:I

.field private mTextureAlpha:F

.field private mTextureTarget:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e01

    .line 590
    iput v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 591
    iput v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    const/16 v1, 0xde1

    .line 592
    iput v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    const/4 v2, 0x1

    .line 593
    iput-boolean v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mBlendEnabled:Z

    .line 594
    iput v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mLineWidth:F

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mLineSmooth:Z

    .line 598
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v0, 0xb50

    .line 601
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const/16 v0, 0xbd0

    .line 604
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    const v0, 0x8074

    .line 606
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const v0, 0x8078

    .line 607
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 608
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v3, 0x45f00800    # 7681.0f

    .line 610
    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/4 v0, 0x0

    .line 614
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    const/16 v0, 0xbe2

    .line 616
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    const/16 v0, 0x303

    .line 617
    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    const/16 v0, 0xcf5

    const/4 v1, 0x2

    .line 620
    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    return-void
.end method


# virtual methods
.method public setBlendEnabled(Z)V
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mBlendEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 679
    :cond_0
    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mBlendEnabled:Z

    const/16 v0, 0xbe2

    if-eqz p1, :cond_1

    .line 681
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    :goto_0
    return-void
.end method

.method public setColorMode(IF)V
    .locals 4

    .line 649
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->isOpaque(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 653
    iput v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    .line 655
    invoke-virtual {p0, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTextureTarget(I)V

    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const p2, 0x477fff00    # 65535.0f

    mul-float/2addr v0, p2

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr v0, p2

    div-float/2addr v0, p2

    .line 658
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 659
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 660
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 661
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-float/2addr v0, p2

    .line 662
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 658
    invoke-interface {v1, v2, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    .line 630
    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mLineWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mLineWidth:F

    .line 632
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    return-void
.end method

.method public setTexEnvMode(I)V
    .locals 3

    .line 624
    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 625
    :cond_0
    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    .line 626
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float p1, p1

    invoke-interface {v0, v1, v2, p1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    return-void
.end method

.method public setTextureAlpha(F)V
    .locals 1

    .line 636
    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 640
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    const/16 p1, 0x1e01

    .line 641
    invoke-virtual {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    const/16 p1, 0x2100

    .line 644
    invoke-virtual {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    :goto_0
    return-void
.end method

.method public setTextureTarget(I)V
    .locals 2

    .line 667
    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 669
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 671
    :cond_1
    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    if-eqz p1, :cond_2

    .line 673
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    :cond_2
    return-void
.end method
