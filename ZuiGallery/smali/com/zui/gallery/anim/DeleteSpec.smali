.class public Lcom/zui/gallery/anim/DeleteSpec;
.super Lcom/zui/gallery/anim/GlAnimaionSpec;
.source "DeleteSpec.java"


# static fields
.field private static sScreenHeight:I = -0x1

.field private static sScreenWidth:I = -0x1


# instance fields
.field private mAnimAlpha:Lcom/zui/gallery/anim/GlAnimItemAlpha;

.field private mAnimScale:Lcom/zui/gallery/anim/GlAnimItemScale;

.field private mAnimTranslation:Lcom/zui/gallery/anim/GlAnimItemTranslation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/zui/gallery/anim/GlAnimaionSpec;-><init>()V

    const/16 v0, 0x24e

    .line 15
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->duration:I

    return-void
.end method

.method public static setScreenSize(II)V
    .locals 0

    .line 21
    sput p0, Lcom/zui/gallery/anim/DeleteSpec;->sScreenWidth:I

    .line 22
    sput p1, Lcom/zui/gallery/anim/DeleteSpec;->sScreenHeight:I

    return-void
.end method


# virtual methods
.method public setPoint(ZIIIII)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimTranslation:Lcom/zui/gallery/anim/GlAnimItemTranslation;

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/zui/gallery/anim/GlAnimItemTranslation;

    invoke-direct {v0}, Lcom/zui/gallery/anim/GlAnimItemTranslation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimTranslation:Lcom/zui/gallery/anim/GlAnimItemTranslation;

    .line 31
    invoke-virtual {p0, v0}, Lcom/zui/gallery/anim/DeleteSpec;->addItem(Lcom/zui/gallery/anim/GlAnimItemBase;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    .line 38
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimTranslation:Lcom/zui/gallery/anim/GlAnimItemTranslation;

    const/high16 p3, 0x41700000    # 15.0f

    const/high16 p4, 0x41f00000    # 30.0f

    const p5, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, p3, p4, p5}, Lcom/zui/gallery/anim/GlAnimItemTranslation;->setShake(FFF)V

    .line 39
    iget-object p1, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimTranslation:Lcom/zui/gallery/anim/GlAnimItemTranslation;

    const/high16 p3, 0x40400000    # 3.0f

    int-to-float p2, p2

    const/high16 p4, 0x40800000    # 4.0f

    add-float/2addr p2, p4

    div-float/2addr p3, p2

    sub-float p2, v0, p3

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/anim/GlAnimItemTranslation;->setDuration(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance p1, Lcom/zui/gallery/anim/GlAnimItemScale;

    invoke-direct {p1}, Lcom/zui/gallery/anim/GlAnimItemScale;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimScale:Lcom/zui/gallery/anim/GlAnimItemScale;

    .line 49
    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/DeleteSpec;->addItem(Lcom/zui/gallery/anim/GlAnimItemCenter;)V

    .line 54
    new-instance p1, Lcom/zui/gallery/anim/GlAnimItemAlpha;

    invoke-direct {p1}, Lcom/zui/gallery/anim/GlAnimItemAlpha;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimAlpha:Lcom/zui/gallery/anim/GlAnimItemAlpha;

    .line 55
    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/DeleteSpec;->addItem(Lcom/zui/gallery/anim/GlAnimItemBase;)V

    .line 59
    :try_start_1
    iget-object p1, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimScale:Lcom/zui/gallery/anim/GlAnimItemScale;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/anim/GlAnimItemScale;->setChange(FF)V

    .line 61
    iget-object p1, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimAlpha:Lcom/zui/gallery/anim/GlAnimItemAlpha;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/zui/gallery/anim/GlAnimItemAlpha;->setChange(FF)V

    const p1, 0x3f333333    # 0.7f

    .line 63
    rem-int/lit8 p2, p2, 0x5

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    .line 64
    iget-object p2, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimTranslation:Lcom/zui/gallery/anim/GlAnimItemTranslation;

    invoke-virtual {p2, v2, p1}, Lcom/zui/gallery/anim/GlAnimItemTranslation;->setDuration(FF)V

    .line 65
    iget-object p2, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimScale:Lcom/zui/gallery/anim/GlAnimItemScale;

    invoke-virtual {p2, v2, p1}, Lcom/zui/gallery/anim/GlAnimItemScale;->setDuration(FF)V

    .line 67
    iget-object p2, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimAlpha:Lcom/zui/gallery/anim/GlAnimItemAlpha;

    sub-float v0, p1, v1

    invoke-virtual {p2, v0, p1}, Lcom/zui/gallery/anim/GlAnimItemAlpha;->setDuration(FF)V

    sub-int/2addr p3, p5

    int-to-float p1, p3

    sub-int/2addr p4, p6

    int-to-float p2, p4

    div-float/2addr p1, p2

    .line 69
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    sget p2, Lcom/zui/gallery/anim/DeleteSpec;->sScreenWidth:I

    int-to-float p2, p2

    sget p3, Lcom/zui/gallery/anim/DeleteSpec;->sScreenHeight:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    div-float/2addr p1, p2

    .line 70
    iget-object p2, p0, Lcom/zui/gallery/anim/DeleteSpec;->mAnimTranslation:Lcom/zui/gallery/anim/GlAnimItemTranslation;

    const/high16 p3, -0x41000000    # -0.5f

    invoke-virtual {p2, p3, p1}, Lcom/zui/gallery/anim/GlAnimItemTranslation;->setArc(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
