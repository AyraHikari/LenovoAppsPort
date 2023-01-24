.class public final Lcom/google/vr/sdk/widgets/video/deps/cd;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bW$a;


# static fields
.field public static final f:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/cd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:[B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cd$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cd$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cd;->f:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->c:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->d:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->c:J

    .line 5
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->d:J

    .line 6
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->e:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cd;

    .line 29
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->c:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/cd;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->d:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/cd;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cd;->a:Ljava/lang/String;

    .line 30
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cd;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->e:[B

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cd;->e:[B

    .line 31
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
    .locals 6

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->g:I

    if-nez v0, :cond_2

    const/16 v0, 0x20f

    .line 17
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->c:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->d:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->e:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->g:I

    .line 23
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->g:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 34
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cd;->e:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
