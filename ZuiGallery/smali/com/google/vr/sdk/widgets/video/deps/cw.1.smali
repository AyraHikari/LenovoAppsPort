.class public final Lcom/google/vr/sdk/widgets/video/deps/cw;
.super Lcom/google/vr/sdk/widgets/video/deps/cr;
.source "TimeSignalCommand.java"


# static fields
.field public static final c:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/cw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cw$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cw$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cw;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cr;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cw;->a:J

    .line 3
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cw;->b:J

    return-void
.end method

.method synthetic constructor <init>(JJLcom/google/vr/sdk/widgets/video/deps/cw$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/cw;-><init>(JJ)V

    return-void
.end method

.method static a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)J
    .locals 6

    .line 8
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v2

    or-long/2addr v0, v2

    add-long/2addr v0, p1

    const-wide p0, 0x1ffffffffL

    and-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide p0
.end method

.method static a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/gJ;)Lcom/google/vr/sdk/widgets/video/deps/cw;
    .locals 1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cw;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)J

    move-result-wide p0

    .line 6
    invoke-virtual {p3, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->b(J)J

    move-result-wide p2

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cw;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cw;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 16
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cw;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
