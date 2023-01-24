.class public final Lcom/google/vr/sdk/widgets/video/deps/dL;
.super Ljava/lang/Object;
.source "RepresentationKey.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/vr/sdk/widgets/video/deps/dL;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/dL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dL$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/dL$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->d:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/dL;)I
    .locals 2

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 14
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dL;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dL;->a(Lcom/google/vr/sdk/widgets/video/deps/dL;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 8
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
