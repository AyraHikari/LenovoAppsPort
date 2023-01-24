.class public final Lcom/google/vr/sdk/widgets/video/deps/cq;
.super Lcom/google/vr/sdk/widgets/video/deps/cr;
.source "PrivateCommand.java"


# static fields
.field public static final d:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/cq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cq$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cq$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cq;->d:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J[BJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cr;-><init>()V

    .line 2
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->a:J

    .line 3
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->b:J

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->c:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cr;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->a:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->b:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->c:[B

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/vr/sdk/widgets/video/deps/cq$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cq;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static a(Lcom/google/vr/sdk/widgets/video/deps/gA;IJ)Lcom/google/vr/sdk/widgets/video/deps/cq;
    .locals 6

    .line 12
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v1

    add-int/lit8 p1, p1, -0x4

    .line 13
    new-array v3, p1, [B

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v3, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 15
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/cq;

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/cq;-><init>(J[BJ)V

    return-object p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->c:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cq;->c:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
