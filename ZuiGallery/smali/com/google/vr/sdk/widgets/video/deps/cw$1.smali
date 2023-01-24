.class Lcom/google/vr/sdk/widgets/video/deps/cw$1;
.super Ljava/lang/Object;
.source "TimeSignalCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/vr/sdk/widgets/video/deps/cw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/vr/sdk/widgets/video/deps/cw;
    .locals 7

    .line 2
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/cw;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/cw;-><init>(JJLcom/google/vr/sdk/widgets/video/deps/cw$1;)V

    return-object v6
.end method

.method public a(I)[Lcom/google/vr/sdk/widgets/video/deps/cw;
    .locals 0

    .line 3
    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/cw;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cw$1;->a(Landroid/os/Parcel;)Lcom/google/vr/sdk/widgets/video/deps/cw;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cw$1;->a(I)[Lcom/google/vr/sdk/widgets/video/deps/cw;

    move-result-object p1

    return-object p1
.end method
