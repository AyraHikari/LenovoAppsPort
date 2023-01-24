.class public final Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "ControllerPositionEvent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
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

    .line 17
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
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

    .line 62
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 67
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    .line 68
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->x:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->x:F

    .line 69
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->y:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->y:F

    .line 70
    iget p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->z:F

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->z:F

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy ControllerPositionEvent from non-ControllerPositionEvent instance."

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

    .line 57
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

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

    .line 49
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->x:F

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->y:F

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->z:F

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

    .line 41
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 42
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->z:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
