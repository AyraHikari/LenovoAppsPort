.class public final Lcom/google/vr/sdk/widgets/video/deps/cg;
.super Lcom/google/vr/sdk/widgets/video/deps/cm;
.source "BinaryFrame.java"


# static fields
.field public static final b:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/cg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cg$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cg$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cg;->b:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cm;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cg;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cm;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cg;->a:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cg;

    .line 12
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cg;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cg;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cg;->a:[B

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cg;->a:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cg;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cg;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 17
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cg;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cg;->a:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
