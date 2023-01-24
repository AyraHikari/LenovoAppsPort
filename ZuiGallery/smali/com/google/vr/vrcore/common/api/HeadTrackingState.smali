.class public Lcom/google/vr/vrcore/common/api/HeadTrackingState;
.super Lcom/google/vr/vrcore/base/api/ParcelableProto;
.source "HeadTrackingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/vrcore/base/api/ParcelableProto<",
        "Lcom/google/vr/sdk/proto/nano/Session$TrackerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/common/api/HeadTrackingState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/vr/vrcore/base/api/ParcelableProto;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/base/api/ParcelableProto;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/vr/vrcore/common/api/HeadTrackingState$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/base/api/ParcelableProto;-><init>([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_0
    instance-of v0, p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    if-eqz v0, :cond_1

    .line 86
    check-cast p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-virtual {p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->getData()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->getData()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final shouldSerializeDataLength()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSerializeEmptyInsteadOfNullBuffer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->getSizeBytes()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "HeadTrackingState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
