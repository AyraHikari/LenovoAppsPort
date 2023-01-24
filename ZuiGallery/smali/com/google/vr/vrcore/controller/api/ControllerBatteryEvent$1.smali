.class Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent$1;
.super Ljava/lang/Object;
.source "ControllerBatteryEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    invoke-direct {v0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 51
    new-array p1, p1, [Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent$1;->newArray(I)[Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    move-result-object p1

    return-object p1
.end method
