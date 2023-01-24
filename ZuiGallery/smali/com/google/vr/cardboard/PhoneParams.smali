.class public Lcom/google/vr/cardboard/PhoneParams;
.super Ljava/lang/Object;
.source "PhoneParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/PhoneParams$PpiOverride;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PPI_OVERRIDES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/cardboard/PhoneParams$PpiOverride;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    const-class v0, Lcom/google/vr/cardboard/PhoneParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/PhoneParams;->TAG:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    .line 51
    new-instance v8, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v2, "Micromax"

    const/4 v3, 0x0

    const-string v4, "4560MMX"

    const/4 v5, 0x0

    const/high16 v6, 0x43590000    # 217.0f

    const/high16 v7, 0x43590000    # 217.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v10, "HTC"

    const-string v11, "endeavoru"

    const-string v12, "HTC One X"

    const/4 v13, 0x0

    const/high16 v14, 0x439c0000    # 312.0f

    const/high16 v15, 0x439c0000    # 312.0f

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G920P"

    const/4 v7, 0x0

    const v8, 0x440fc000    # 575.0f

    const v9, 0x440fc000    # 575.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930"

    const v8, 0x44114000    # 581.0f

    const/high16 v9, 0x44110000    # 580.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G9300"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930A"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930F"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930P"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930R4"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930T"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930V"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930W8"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915FY"

    const v8, 0x44074000    # 541.0f

    const v9, 0x44074000    # 541.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915A"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915T"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915K"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915T"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915G"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915D"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "BLU"

    const-string v5, "BLU"

    const-string v6, "Studio 5.0 HD LTE"

    const-string v7, "qcom"

    const/high16 v8, 0x43930000    # 294.0f

    const/high16 v9, 0x43930000    # 294.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "OnePlus"

    const-string v5, "A0001"

    const-string v6, "A0001"

    const-string v7, "bacon"

    const v8, 0x43c88000    # 401.0f

    const v9, 0x43c88000    # 401.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "THL"

    const-string v5, "THL"

    const-string/jumbo v6, "thl 5000"

    const-string v7, "mt6592"

    const v8, 0x43dc8000    # 441.0f

    const v9, 0x43dc8000    # 441.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "Google"

    const-string v5, "sailfish"

    const-string v6, "Pixel"

    const-string v7, "sailfish"

    const v8, 0x43dcdeb8    # 441.74f

    const v9, 0x43dcdeb8    # 441.74f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "Google"

    const-string v5, "marlin"

    const-string v6, "Pixel XL"

    const-string v7, "marlin"

    const v8, 0x4406647b    # 537.57f

    const v9, 0x4406647b    # 537.57f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "Google"

    const-string/jumbo v5, "walleye"

    const/4 v6, 0x0

    const-string/jumbo v7, "walleye"

    const v8, 0x43dcdeb8    # 441.74f

    const v9, 0x43dcdeb8    # 441.74f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/PhoneParams;->PPI_OVERRIDES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPpiOverride()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 7

    .line 142
    new-instance v6, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    invoke-direct {v6}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;-><init>()V

    .line 143
    sget-object v0, Lcom/google/vr/cardboard/PhoneParams;->PPI_OVERRIDES:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/vr/cardboard/PhoneParams;->getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "overrides",
            "manufacturer",
            "device",
            "model",
            "hardware",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/cardboard/PhoneParams$PpiOverride;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;",
            ")Z"
        }
    .end annotation

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    .line 101
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->isMatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    sget-object p0, Lcom/google/vr/cardboard/PhoneParams;->TAG:Ljava/lang/String;

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->manufacturer:Ljava/lang/String;

    aput-object p2, p1, v1

    iget-object p2, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->device:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/4 p2, 0x2

    iget-object p4, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->model:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x3

    iget-object p4, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->hardware:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x4

    iget p4, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->xPpi:F

    .line 106
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    aput-object p4, p1, p2

    const/4 p2, 0x5

    iget p4, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->yPpi:F

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    aput-object p4, p1, p2

    const-string p2, "Found override: {MANUFACTURER=%s, DEVICE=%s, MODEL=%s, HARDWARE=%s} : x_ppi=%f, y_ppi=%f"

    .line 102
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget p0, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->xPpi:F

    invoke-virtual {p5, p0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->setXPpi(F)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    .line 108
    iget p0, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->yPpi:F

    invoke-virtual {p5, p0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->setYPpi(F)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    return p3

    :cond_1
    return v1
.end method

.method public static registerOverrides()V
    .locals 5

    .line 133
    sget-object v0, Lcom/google/vr/cardboard/PhoneParams;->PPI_OVERRIDES:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/vr/cardboard/PhoneParams;->registerOverridesInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static registerOverridesInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "overrides",
            "manufacturer",
            "device",
            "model",
            "hardware"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/cardboard/PhoneParams$PpiOverride;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readPhoneParamsFromExternalStorage()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    new-instance v1, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    invoke-direct {v1}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v1

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    .line 121
    invoke-static/range {v2 .. v7}, Lcom/google/vr/cardboard/PhoneParams;->getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 122
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/MessageNano;->messageNanoEquals(Lcom/google/protobuf/nano/MessageNano;Lcom/google/protobuf/nano/MessageNano;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 123
    sget-object p0, Lcom/google/vr/cardboard/PhoneParams;->TAG:Ljava/lang/String;

    const-string p1, "Applying phone param override."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {v1}, Lcom/google/vr/cardboard/ConfigUtils;->writePhoneParamsToExternalStorage(Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)Z

    :cond_1
    return-void
.end method
