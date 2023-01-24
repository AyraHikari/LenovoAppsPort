.class public final Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
.super Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
.source "ControllerEventPacket2.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;",
            ">;"
        }
    .end annotation
.end field

.field private static pool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;",
            ">;"
        }
    .end annotation
.end field

.field private static poolLock:Ljava/lang/Object;


# instance fields
.field private batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

.field private hasBatteryEvent:Z

.field private positionEventCount:I

.field private positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

.field private timestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->poolLock:Ljava/lang/Object;

    .line 175
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 62
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    .line 36
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    .line 46
    new-instance v1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    invoke-direct {v1}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;-><init>()V

    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    new-instance v3, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    invoke-direct {v3}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->clear()V

    return-void
.end method

.method public static obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
    .locals 2

    .line 155
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->poolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    invoke-direct {v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final addBatteryEvent()Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    .line 144
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket already has battery event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addPositionEvent()Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;
    .locals 3

    .line 125
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    aget-object v0, v1, v0

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final calculateParcelByteLength()I
    .locals 3

    .line 199
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->calculateParcelByteLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    .line 205
    :goto_0
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    if-ge v1, v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->getByteSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 210
    iget-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    invoke-virtual {v1}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->getByteSize()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final clear()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->clear()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    .line 90
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->timestampMillis:J

    return-void
.end method

.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 71
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    if-eqz v0, :cond_1

    .line 75
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 76
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    .line 77
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    .line 78
    iget-boolean v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    .line 79
    iget-wide v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->timestampMillis:J

    iput-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->timestampMillis:J

    .line 80
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    iget-object v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    invoke-virtual {v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy ControllerEventPacket2 from non-ControllerEventPacket2 instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBatteryEvent()Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket doesn\'t have a battery event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPositionEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 118
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    if-ge p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object p1, v0, p1

    return-object p1

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final getPositionEventCount()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    return v0
.end method

.method public final getTimestampMillis()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->timestampMillis:J

    return-wide v0
.end method

.method public final hasBatteryEvent()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->readFromParcel(Landroid/os/Parcel;)V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    .line 271
    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->checkIsValidEventCount(I)V

    move v1, v2

    .line 273
    :goto_0
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    if-ge v1, v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    if-eqz v2, :cond_2

    .line 283
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    invoke-virtual {v1, p1}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 287
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->timestampMillis:J

    .line 297
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final recycle()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->clear()V

    .line 168
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->poolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final refreshTimestampMillis()V
    .locals 2

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->timestampMillis:J

    return-void
.end method

.method public final setEventsControllerIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerIndex"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->setEventsControllerIndex(I)V

    .line 97
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    invoke-static {p1, v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->setControllerIndex(II[Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 98
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    iput p1, v0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->controllerId:I

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
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

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->calculateParcelByteLength()I

    move-result v1

    .line 226
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->writeToParcel(Landroid/os/Parcel;I)V

    .line 230
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    .line 232
    :goto_0
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    if-ge v2, v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent:Z

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->batteryEvent:Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    invoke-virtual {v2, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    :cond_1
    iget-wide v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->timestampMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne p1, v1, :cond_2

    return-void

    .line 250
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Parcelable implemented incorrectly, getByteSize() must return the correct size for each ControllerEvent subclass."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
