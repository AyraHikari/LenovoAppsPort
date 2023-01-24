.class public Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;
.super Ljava/lang/Object;
.source "TimestampedTemperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_SIZE:I = 0x10


# instance fields
.field public temperature:F

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->timestamp:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    add-int/2addr v0, v1

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public set(JF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timestamp",
            "temperature"
        }
    .end annotation

    .line 32
    iput-wide p1, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->timestamp:J

    .line 33
    iput p3, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    return-void
.end method

.method public set(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 38
    iget-wide v0, p1, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->timestamp:J

    iget p1, p1, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->set(JF)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
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

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/16 v0, 0x10

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-wide v1, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->timestamp:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget v1, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    sub-int/2addr p1, p2

    if-ne p1, v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Parcelable implemented incorrectly, PARCEL_SIZE must include the size of each parcelled field."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
