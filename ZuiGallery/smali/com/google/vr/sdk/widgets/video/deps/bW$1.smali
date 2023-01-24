.class Lcom/google/vr/sdk/widgets/video/deps/bW$1;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/vr/sdk/widgets/video/deps/bW;",
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
.method public a(Landroid/os/Parcel;)Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bW;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bW;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/bW;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bW$1;->a(Landroid/os/Parcel;)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bW$1;->a(I)[Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object p1

    return-object p1
.end method
