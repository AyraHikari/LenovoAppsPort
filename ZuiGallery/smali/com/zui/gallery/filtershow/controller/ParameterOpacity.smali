.class public Lcom/zui/gallery/filtershow/controller/ParameterOpacity;
.super Lcom/zui/gallery/filtershow/controller/BasicParameterInt;
.source "ParameterOpacity.java"


# static fields
.field public static sParameterType:Ljava/lang/String; = "ParameterOpacity"


# instance fields
.field mHSVO:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 23
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 20
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->mHSVO:[F

    return-void
.end method


# virtual methods
.method public getColor()[F
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->mHSVO:[F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->getValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->getMaximum()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 37
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->mHSVO:[F

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->sParameterType:Ljava/lang/String;

    return-object v0
.end method

.method public setColor([F)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->mHSVO:[F

    return-void
.end method
