.class public Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;
.super Ljava/lang/Object;
.source "LPCSAlbumCovers.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayname:Ljava/lang/String;

.field private downurl:Ljava/lang/String;

.field private height:I

.field private mediaType:I

.field private photoId:I

.field private supportRange:Z

.field private thumb200:Ljava/lang/String;

.field private thumb640:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers$1;

    invoke-direct {v0}, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers$1;-><init>()V

    sput-object v0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->photoId:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->supportRange:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->type:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->width:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumb640:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->mediaType:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumb200:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumbnail:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->height:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->downurl:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->displayname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayname()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->displayname:Ljava/lang/String;

    return-object v0
.end method

.method public getDownurl()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->downurl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->mediaType:I

    return v0
.end method

.method public getPhotoId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->photoId:I

    return v0
.end method

.method public getSupportRange()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->supportRange:Z

    return v0
.end method

.method public getThumb200()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumb200:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb640()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumb640:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->width:I

    return v0
.end method

.method public setDisplayname(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->displayname:Ljava/lang/String;

    return-void
.end method

.method public setDownurl(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->downurl:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->height:I

    return-void
.end method

.method public setMediaType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->mediaType:I

    return-void
.end method

.method public setPhotoId(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->photoId:I

    return-void
.end method

.method public setSupportRange(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->supportRange:Z

    return-void
.end method

.method public setThumb200(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumb200:Ljava/lang/String;

    return-void
.end method

.method public setThumb640(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumb640:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->type:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    iget p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->photoId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->supportRange:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    iget-object p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumb640:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->mediaType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumb200:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->downurl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/zui/cloudservice/lpcs/LPCSAlbumCovers;->displayname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
