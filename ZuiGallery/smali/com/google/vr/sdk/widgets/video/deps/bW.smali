.class public final Lcom/google/vr/sdk/widgets/video/deps/bW;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bW$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/bW;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bW$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bW$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bW;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 13
    const-class v2, Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/bW$a;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    :goto_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/bW$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/bW$a;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/bW;

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 26
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bW;->b:[Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 28
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
