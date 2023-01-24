.class public final Lcom/google/vr/sdk/widgets/video/deps/ct$a;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method private constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ct$a;->a:I

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct$a;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ct$a;->c:J

    return-void
.end method

.method synthetic constructor <init>(IJJLcom/google/vr/sdk/widgets/video/deps/ct$1;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/ct$a;-><init>(IJJ)V

    return-void
.end method

.method public static b(Landroid/os/Parcel;)Lcom/google/vr/sdk/widgets/video/deps/ct$a;
    .locals 7

    .line 10
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/ct$a;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ct$a;-><init>(IJJ)V

    return-object v6
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct$a;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct$a;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
