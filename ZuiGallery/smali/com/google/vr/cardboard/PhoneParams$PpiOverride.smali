.class Lcom/google/vr/cardboard/PhoneParams$PpiOverride;
.super Ljava/lang/Object;
.source "PhoneParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/PhoneParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PpiOverride"
.end annotation


# instance fields
.field device:Ljava/lang/String;

.field hardware:Ljava/lang/String;

.field manufacturer:Ljava/lang/String;

.field model:Ljava/lang/String;

.field xPpi:F

.field yPpi:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 0
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
            "manufacturer",
            "device",
            "model",
            "hardware",
            "xPpi",
            "yPpi"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->manufacturer:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->device:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->model:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->hardware:Ljava/lang/String;

    .line 36
    iput p5, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->xPpi:F

    .line 37
    iput p6, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->yPpi:F

    return-void
.end method


# virtual methods
.method isMatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "manufacturer",
            "device",
            "model",
            "hardware"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->device:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->model:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->hardware:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 45
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
