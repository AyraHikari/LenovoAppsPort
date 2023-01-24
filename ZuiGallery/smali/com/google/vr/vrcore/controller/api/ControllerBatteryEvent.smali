.class public final Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "ControllerBatteryEvent.java"


# static fields
.field public static final BATTERY_LEVEL_ALMOST_FULL:I = 0x4

.field public static final BATTERY_LEVEL_COUNT:I = 0x6

.field public static final BATTERY_LEVEL_CRITICAL_LOW:I = 0x1

.field public static final BATTERY_LEVEL_FULL:I = 0x5

.field public static final BATTERY_LEVEL_LOW:I = 0x2

.field public static final BATTERY_LEVEL_MEDIUM:I = 0x3

.field public static final BATTERY_LEVEL_UNKNOWN:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryLevelBucket:I

.field public charging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getBatteryLevelBucket(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batteryLevelPercent"
        }
    .end annotation

    const/16 v0, 0x14

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x28

    if-ge p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/16 v0, 0x50

    if-ge p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelBucket"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1c

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "[Unknown level: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "BATTERY_LEVEL_FULL"

    return-object p0

    :cond_1
    const-string p0, "BATTERY_LEVEL_ALMOST_FULL"

    return-object p0

    :cond_2
    const-string p0, "BATTERY_LEVEL_MEDIUM"

    return-object p0

    :cond_3
    const-string p0, "BATTERY_LEVEL_LOW"

    return-object p0

    :cond_4
    const-string p0, "BATTERY_LEVEL_CRITICAL_LOW"

    return-object p0

    :cond_5
    const-string p0, "BATTERY_LEVEL_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 116
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    if-eqz v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 121
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    .line 122
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->batteryLevelBucket:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->batteryLevelBucket:I

    .line 123
    iget-boolean p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->charging:Z

    iput-boolean p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->charging:Z

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy ControllerBatteryEvent from non-ControllerBatteryEvent instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getByteSize()I
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->batteryLevelBucket:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->charging:Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parcel",
            "flags"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->batteryLevelBucket:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-boolean p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->charging:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
