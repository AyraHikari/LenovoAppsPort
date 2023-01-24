.class public final Lcom/google/vr/sdk/widgets/video/deps/ch;
.super Lcom/google/vr/sdk/widgets/video/deps/cm;
.source "ChapterFrame.java"


# static fields
.field public static final a:Ljava/lang/String; = "CHAP"

.field public static final g:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:J

.field private final i:[Lcom/google/vr/sdk/widgets/video/deps/cm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ch$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ch$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ch;->g:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "CHAP"

    .line 9
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cm;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->c:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->d:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->e:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->f:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16
    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/cm;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    const-class v3, Lcom/google/vr/sdk/widgets/video/deps/cm;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cm;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/google/vr/sdk/widgets/video/deps/cm;)V
    .locals 1

    const-string v0, "CHAP"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cm;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->b:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->c:I

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->d:I

    .line 5
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->e:J

    .line 6
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->f:J

    .line 7
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/cm;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    aget-object p1, v0, p1

    return-object p1
.end method

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

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ch;

    .line 28
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->c:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ch;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->d:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ch;->d:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->e:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/ch;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->f:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/ch;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ch;->b:Ljava/lang/String;

    .line 29
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    .line 30
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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
    .locals 4

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->c:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->d:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 35
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->e:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 36
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->f:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 39
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ch;->i:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 46
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
