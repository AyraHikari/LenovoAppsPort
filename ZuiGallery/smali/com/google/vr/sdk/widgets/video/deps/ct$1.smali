.class Lcom/google/vr/sdk/widgets/video/deps/ct$1;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/vr/sdk/widgets/video/deps/ct;",
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
.method public a(Landroid/os/Parcel;)Lcom/google/vr/sdk/widgets/video/deps/ct;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ct;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;-><init>(Landroid/os/Parcel;Lcom/google/vr/sdk/widgets/video/deps/ct$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/vr/sdk/widgets/video/deps/ct;
    .locals 0

    .line 3
    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/ct;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct$1;->a(Landroid/os/Parcel;)Lcom/google/vr/sdk/widgets/video/deps/ct;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct$1;->a(I)[Lcom/google/vr/sdk/widgets/video/deps/ct;

    move-result-object p1

    return-object p1
.end method
