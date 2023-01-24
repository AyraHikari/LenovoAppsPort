.class public final Lcom/google/vr/sdk/widgets/video/deps/ci;
.super Lcom/google/vr/sdk/widgets/video/deps/cm;
.source "ChapterTocFrame.java"


# static fields
.field public static final a:Ljava/lang/String; = "CTOC"

.field public static final f:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/ci;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:[Ljava/lang/String;

.field private final g:[Lcom/google/vr/sdk/widgets/video/deps/cm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ci$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ci$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ci;->f:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "CTOC"

    .line 8
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cm;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->c:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->d:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->e:[Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14
    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/cm;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    :goto_2
    if-ge v2, v0, :cond_2

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    const-class v3, Lcom/google/vr/sdk/widgets/video/deps/cm;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cm;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/vr/sdk/widgets/video/deps/cm;)V
    .locals 1

    const-string v0, "CTOC"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cm;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->b:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->c:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->d:Z

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->e:[Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/cm;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ci;

    .line 26
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->c:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ci;->c:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->d:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ci;->d:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ci;->b:Ljava/lang/String;

    .line 27
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->e:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ci;->e:[Ljava/lang/String;

    .line 28
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    .line 29
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
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->c:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 33
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->d:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->b:Ljava/lang/String;

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
    .locals 3

    .line 36
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->d:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->e:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    move v0, p2

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ci;->g:[Lcom/google/vr/sdk/widgets/video/deps/cm;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 42
    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
