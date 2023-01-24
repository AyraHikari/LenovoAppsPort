.class public abstract Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.super Ljava/lang/Object;
.source "ControllerEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTROLLER_ID_DEFAULT:I


# instance fields
.field public controllerId:I

.field public timestampNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 49
    iget-wide v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->timestampNanos:J

    iput-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->timestampNanos:J

    .line 50
    iget p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    return-void
.end method

.method public getByteSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->timestampNanos:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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

    .line 29
    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->timestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
