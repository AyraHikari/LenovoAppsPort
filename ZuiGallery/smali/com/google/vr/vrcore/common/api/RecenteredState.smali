.class public Lcom/google/vr/vrcore/common/api/RecenteredState;
.super Lcom/google/vr/vrcore/base/api/ParcelableProto;
.source "RecenteredState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/vrcore/base/api/ParcelableProto<",
        "Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/common/api/RecenteredState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/google/vr/vrcore/common/api/RecenteredState$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/common/api/RecenteredState$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/common/api/RecenteredState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 30
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/base/api/ParcelableProto;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/vr/vrcore/common/api/RecenteredState$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/common/api/RecenteredState;-><init>(Landroid/os/Parcel;)V

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

    .line 26
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

    .line 57
    :cond_0
    instance-of v0, p1, Lcom/google/vr/vrcore/common/api/RecenteredState;

    if-eqz v0, :cond_1

    .line 58
    check-cast p1, Lcom/google/vr/vrcore/common/api/RecenteredState;

    invoke-virtual {p1}, Lcom/google/vr/vrcore/common/api/RecenteredState;->getData()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/RecenteredState;->getData()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/RecenteredState;->getSizeBytes()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RecenteredState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
