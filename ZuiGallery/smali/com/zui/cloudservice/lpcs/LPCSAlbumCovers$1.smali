.class Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers$1;
.super Ljava/lang/Object;
.source "LPCSAlbumCovers.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;
    .locals 1

    .line 69
    new-instance v0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;

    invoke-direct {v0, p1}, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;
    .locals 0

    .line 74
    new-array p1, p1, [Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers$1;->newArray(I)[Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;

    move-result-object p1

    return-object p1
.end method
