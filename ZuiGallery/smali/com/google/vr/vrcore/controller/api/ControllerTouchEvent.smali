.class public final Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "ControllerTouchEvent.java"


# static fields
.field public static final ACTION_CANCEL:I = 0x4

.field public static final ACTION_DOWN:I = 0x1

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_UP:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public fingerId:I

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
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

    .line 61
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 107
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    if-eqz v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 112
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    .line 113
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->fingerId:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->fingerId:I

    .line 114
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    .line 115
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    .line 116
    iget p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy ControllerTouchEvent from non-ControllerTouchEvent instance."

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

    .line 102
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

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

    .line 93
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->fingerId:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

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

    .line 84
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->fingerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 88
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
