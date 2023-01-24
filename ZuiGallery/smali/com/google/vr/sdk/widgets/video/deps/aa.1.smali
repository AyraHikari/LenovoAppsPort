.class public final Lcom/google/vr/sdk/widgets/video/deps/aa;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator<",
        "Lcom/google/vr/sdk/widgets/video/deps/aa$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field private final d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aa$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aa$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aa;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->a:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->d:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    .line 20
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->b:I

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/aa$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p3}, [Lcom/google/vr/sdk/widgets/video/deps/aa$a;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    .line 9
    :cond_0
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    .line 10
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_2

    add-int/lit8 p2, p1, -0x1

    .line 11
    aget-object p2, p3, p2

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;)Ljava/util/UUID;

    move-result-object p2

    aget-object v0, p3, p1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    aget-object p1, p3, p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Duplicate data for uuid: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_2
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    .line 15
    array-length p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/aa$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/aa;-><init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/aa$a;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/aa$a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/aa;-><init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/aa$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;Lcom/google/vr/sdk/widgets/video/deps/aa$a;)I
    .locals 2

    .line 44
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->bb:Ljava/util/UUID;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/b;->bb:Ljava/util/UUID;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/aa$a;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/aa$a;
    .locals 5

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 23
    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/aa;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 30
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aa;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aa;-><init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/aa$a;)V

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 51
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;Lcom/google/vr/sdk/widgets/video/deps/aa$a;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/aa;

    .line 41
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/aa;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    .line 42
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

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->e:I

    if-nez v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->e:I

    .line 35
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->e:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 48
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aa;->d:[Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
